import matplotlib.pyplot as plt

# Define the frameworks and their approximate usage percentages, including Airflow
frameworks = [
    "Kafka", "Cassandra", "ElasticSearch", "Flink", "Storm",
    "Samza", "Presto", "HBase", "Redis", "Druid", "NiFi", "Airflow"
]
percentages = [18, 8, 13, 8, 4, 4, 4, 8, 4, 8, 4, 7]

# Create the pie chart
plt.figure(figsize=(10, 7))
plt.pie(percentages, labels=frameworks, autopct='%1.1f%%', startangle=140, colors=plt.cm.Paired.colors)
plt.title("Big Data Frameworks Usage Distribution 2024")
plt.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

# Display the pie chart
plt.show()