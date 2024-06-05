package org.example.sparktest
import org.apache.spark.sql.functions._
import org.apache.spark.sql.{DataFrame, SparkSession}
import org.apache.spark.sql.types.NumericType


class Main2 {
  def main(args: Array[String]): Unit = {
    // 1.1: Import necessary packages and create Spark session
    val spark = SparkSession.builder()
      .appName("FoodApp")
      .master("local[*]")
      .getOrCreate()

    import spark.implicits._

    // 1.3: Load data
    val filePath = "path/to/datafoodfr.csv"
    val data = spark.read
      .option("header", "true")
      .option("inferSchema", "true")
      .csv(filePath)

    // 1.4: Display the first 5 rows
    data.show(5)

    // 2.1: Calculate and display number of rows and columns
    val rowCount = data.count()
    val colCount = data.columns.length
    println(s"Number of rows: $rowCount")
    println(s"Number of columns: $colCount")

    // 2.2: Identify missing values in each column
    val missingValues = data.select(data.columns.map(c => sum(col(c).isNull.cast("int")).alias(c)): _*)
    missingValues.show()

    // 2.3: Define function to calculate missing percentages
    def calculateMissingPercentages(columns: Array[String]): Array[(String, Double)] = {
      val totalRows = data.count().toDouble
      columns.map { colName =>
        val missingCount = data.filter(col(colName).isNull).count()
        val percentage = (missingCount / totalRows) * 100
        (colName, percentage)
      }
    }

    // 2.4: Display missing percentages
    val segments = Map(
      "Segment 1" -> Array("column1", "column2"),
      // Add other segments and columns as needed
    )

    segments.foreach { case (title, columns) =>
      val missingPercentages = calculateMissingPercentages(columns)
      println(s"Taux de valeurs manquantes pour $title:")
      missingPercentages.foreach { case (colName, percentage) =>
        println(f"$colName%-30s ${percentage}%10.6f")
      }
      println()
    }

    // 2.5: Descriptive analysis
    data.describe().show()

    // 2.6: Select relevant columns
    // val selectedData = data.select("column1", "column2", "column3") // Modify as needed

    // 3.1: Function to replace outliers with NaN
    def replaceOutliersWithNaN(df: DataFrame, column: String, lowerBound: Double, upperBound: Double): DataFrame = {
      df.withColumn(column, when(col(column).between(lowerBound, upperBound), col(column)).otherwise(lit(Double.NaN)))
    }

    // 3.2: Execute and describe cleaned data
    val cleanedData = replaceOutliersWithNaN(data, "columnName", 0, 100) // Modify as needed
    cleanedData.describe().show()

    // 3.3: Remove rows with missing 'product_name'
    val nonNullData = cleanedData.filter(col("product_name").isNotNull)

    // 3.4: Replace outliers in 'salt_100g'
    val finalData = nonNullData.withColumn("salt_100g", when(col("salt_100g") > 10, lit(null)).otherwise(col("salt_100g")))

    // 3.5: Describe cleaned data
    finalData.describe().show()

    // 3.6: Filter products with a name
    val productsWithName = finalData.filter(col("product_name").isNotNull)

    // 3.7: Filter products containing 'thé'
    val teaProducts = productsWithName.filter(col("product_name").contains("thé"))

    // 3.8: Filter products with a non-null main category
    val productsWithCategory = teaProducts.filter(col("main_category_fr").isNotNull).cache()

    // 3.9: Create new column 'rang_category'
    val finalProcessedData = productsWithCategory.withColumn("rang_category", concat(col("main_category_fr"), lit(" - "), col("categories_fr")))

    // 4.1: Define categories to keep
    val categoriesToKeep = Seq("category1", "category2") // Modify as needed

    // 4.2: Filter products by categories
    val filteredData = finalProcessedData.filter(col("main_category_fr").isin(categoriesToKeep: _*))

    // 4.3: Define renamed categories
    val renamedCategories = Map("oldName1" -> "newName1", "oldName2" -> "newName2")

    // 4.4: Create DataFrame with original and renamed categories
    val categoryDF = spark.createDataFrame(renamedCategories.toSeq).toDF("original", "renamed")

    // 4.5: Join with working DataFrame
    val joinedData = filteredData.join(categoryDF, filteredData("main_category_fr") === categoryDF("original"))

    // 4.6: Drop 'rang_category' column
    val cleanedDataFinal = joinedData.drop("rang_category")

    // 4.7: Select necessary columns
    val finalSelectedData = cleanedDataFinal.select("product_name", "renamed", "other_columns") // Modify as needed

    // 4.8: Fill missing values
    val filledData = finalSelectedData.na.fill(Map("product_name" -> "Unknown", "renamed" -> "Unknown"))

    // 4.9: Calculate medians and fill missing values
    val medians = filledData.columns.filter(colName => filledData.schema(colName).dataType.isInstanceOf[NumericType]).map { colName =>
      val median = filledData.stat.approxQuantile(colName, Array(0.5), 0.0).head
      (colName, median)
    }.toMap

    val finalDataWithMedians = medians.foldLeft(filledData) { case (df, (colName, median)) =>
      df.na.fill(Map(colName -> median))
    }

    // 5.1: Reduce partitions to 1
    val singlePartitionData = finalDataWithMedians.coalesce(1)

    // 5.2: Save to CSV
    singlePartitionData.write.format("csv").save("path/to/output.csv")


  }
}