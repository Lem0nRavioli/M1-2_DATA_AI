from pyspark.sql import SparkSession

# Initialize SparkSession
spark = SparkSession.builder \
 .appName("WordCount") \
 .getOrCreate()
# Load the text file
lines = spark.sparkContext.textFile("hdfs:///user/root/input/fichier1.txt")
# Split each line into words
words = lines.flatMap(lambda line: line.split())
# Map each word to a tuple (word, 1) and then reduce by key to count occurrences
word_counts = words.map(lambda word: (word, 1)).reduceByKey(lambda a, b: a + b)
# Save the word counts to a text file
word_counts.saveAsTextFile("fichier_count")
# Stop the SparkSession
spark.stop()