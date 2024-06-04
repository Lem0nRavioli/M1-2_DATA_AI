from pyspark.sql import SparkSession
from pyspark.sql.functions import explode, split
# Initialisation de la session Spark
spark = SparkSession \
 .builder \
 .appName("NetworkWordCount") \
 .getOrCreate()
# Configuration de la lecture en continu à partir du socket localhost:9999
lines = spark \
 .readStream \
 .format("socket") \
 .option("host", "localhost") \
 .option("port", 9999) \
 .load()
# Diviser les lignes en mots
words = lines.select(
 explode(split(lines.value, " ")).alias("word")
)
# Compter le nombre d'occurrences de chaque mot
wordCounts = words.groupBy("word").count()
# Écrire les résultats continus sur la console, rafraîchissant chaque seconde
query = wordCounts \
 .writeStream \
 .outputMode("complete") \
 .format("console") \
 .trigger(processingTime="1 second") \
 .start()
# Attendre la terminaison du traitement en continu
query.awaitTermination()