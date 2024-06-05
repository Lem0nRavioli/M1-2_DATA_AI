from confluent_kafka import Producer

def delivery_callback(err, msg):
 if err:
    print(f"Failed to deliver message: {err}")
 else:
    print(f"Message delivered: {msg}")
p = Producer({'bootstrap.servers': 'localhost:9092'})

for i in range(10):
  p.produce('data_stream', f"Message number {i}", callback=delivery_callback)

p.flush()



######## 2 ########
from confluent_kafka import Consumer, KafkaError

c = Consumer({
 'bootstrap.servers': 'localhost:9092',
 'group.id': 'my_group',
 'auto.offset.reset': 'earliest'
})

c.subscribe(['data_stream'])
while True:
    msg = c.poll(timeout=1.0)
    if msg is None:
        continue
    if msg.error():
        if msg.error().code() == KafkaError._PARTITION_EOF:
            continue
        else:
            print(msg.error())
            break
    print('Received message: {}'.format(msg.value().decode('utf-8')))

c.close()


########## 3 ##########
from confluent_kafka import Consumer
from hdfs import InsecureClient

client = InsecureClient('http://localhost:9870')
# Créer un répertoire dans HDFS pour stocker les données
client.makedirs('data')
c = Consumer({
 'bootstrap.servers': 'localhost:9092',
 'group.id': 'my_group',
 'auto.offset.reset': 'earliest'
})
c.subscribe(['data_stream'])

while True:
    msg = c.poll(timeout=1.0)
    if msg is None:
        print("Waiting for message")
        continue
    if msg.error():
        if msg.error().code() == KafkaError._PARTITION_EOF:
            continue
        else:
            print(msg.error())
            break
    # Écrire les données dans un fichier sur HDFS
    with client.write('data/data_stream.txt', append=True) as writer:
        writer.write(msg.value().decode('utf-8') + '\n')
        print("Wrote", msg.value().decode('utf-8'))


c.close()

########## 4 ##########
from pyspark.sql import SparkSession
spark = SparkSession.builder \
 .appName("Analyse de données") \
 .getOrCreate()

# Charger les données depuis HDFS en tant que DataFrame
df = spark.read.text("hdfs://localhost:9870/data/data_stream.txt")
# Effectuer une analyse simple

word_count = df.count()
print("Nombre total de messages:", word_count)
spark.stop()

from pyspark.sql import SparkSession
# Initialize SparkSession
spark = SparkSession.builder \
 .appName("WordCount") \
 .getOrCreate()
# Load the text file
lines = spark.sparkContext.textFile("hdfs:///user/root/data_stream_2.txt")
# Split each line into words
words = lines.flatMap(lambda line: line.split())
# Map each word to a tuple (word, 1) and then reduce by key to count occurrences
word_counts = words.map(lambda word: (word, 1)).reduceByKey(lambda a, b: a + b)
# Save the word counts to a text file
word_counts.saveAsTextFile("fichier_count_kafka2")
# Stop the SparkSession
spark.stop()


########## 5 ###########
from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("Analyse de données") \
    .config("spark.executor.memory", "2g") \
    .config("spark.driver.memory", "2g") \
    .config("spark.hadoop.ipc.maximum.data.length", "1342177280") \
    .config("spark.hadoop.dfs.blocksize", "1048576000") \
    .getOrCreate()

# Charger les données depuis HDFS en tant que DataFrame
df = spark.read.text("hdfs://localhost:9870/root/data/data_stream.txt")

# Effectuer une analyse simple
word_count = df.count()
print("Nombre total de messages:", word_count)

spark.stop()
