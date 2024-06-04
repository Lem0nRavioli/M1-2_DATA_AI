// Read the input file from HDFS
val textFile = sc.textFile("hdfs:///user/root/input/fichier1.txt")

// Perform the word count
val counts = textFile.flatMap(line => line.split("\\s+")).map(word => (word, 1)).reduceByKey(_ + _)

// Save the result back to HDFS or print it
counts.saveAsTextFile("hdfs:///user/root/output/wordcount") // To save the result to HDFS
counts.collect().foreach(println) // To print the result to the console
