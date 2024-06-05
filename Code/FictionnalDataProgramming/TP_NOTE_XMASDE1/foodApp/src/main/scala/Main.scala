package org.example.sparktest
import org.apache.spark.sql.{SparkSession, DataFrame}
import org.apache.spark.sql.functions._
import org.apache.spark.sql.types.NumericType
import java.io.{File, PrintWriter}

object Main {
  def main(args: Array[String]): Unit = {

    // PART 1
    // Créer une session spark
    val spark = SparkSession
      .builder()
      .appName("spark_test")
      .master("local[*]")
      .getOrCreate()

    // lire le dataframe et définir le typage des données grâce à inferSchema
    val df = spark.read
      .option("header", value=true)
      .option("inferSchema", value = true)
      .csv("data/datafoodfr.csv")

    // Afficher les 5 premières lignes
    df.show(5)
    df.printSchema()

    // ============================================= PART 2
    // 2.1) Calculer / Afficher le nombre de lignes et de colonnes dans le DataFrame.
    val rowCount = df.count()
    val columnCount = df.columns.length
    println(s"Nombre de lignes : $rowCount, Nombre de colonnes : $columnCount")

    //2.2) Identifiez les valeurs manquantes dans chaque colonne.
    val missing_data = df.select(df.columns.map(c =>
      sum(col(c).isNull.cast("int")).alias(c)): _*)
    missing_data.show()

    // 2.3) Définissez une fonction calculateMissingPercentages() qui prend un tableau de noms de
    //    //colonnes comme argument et retourne un tableau de tuples contenant le nom de la colonne et
    //    //le pourcentage de valeurs manquantes pour chaque colonne. À l'aide de la méthode filter() et
    //    //de la fonction isNull(), comptez le nombre de valeurs manquantes pour chaque colonne, puis
    //    //calculez le pourcentage en le divisant par le nombre total de lignes

    def calculateMissingPercentages(columnNames: Array[String]): Array[(String, Double)] = {
      columnNames.map { columnName =>
        val missingCount = df.select(columnName).where(col(columnName).isNull).count()
        val totalCount = df.count()
        val missingPercentage = (missingCount.toDouble / totalCount) * 100
        (columnName, missingPercentage)
      }
    }

    // Calculer le pourcentage manquant pour chaque colonnes
    val missingPercentages = calculateMissingPercentages(df.columns)

    // Afficher les pourcentages manquants
    missingPercentages.foreach { case (columnName, missingPercentage) =>
      println(s"Colonne: $columnName, Pourcentage manquant: $missingPercentage%")
    }
    // 2.4) Utilisez ce code pour Afficher les pourcentages de valeurs manquantes pour chaque
    //segment de colonnes.

    //    missingPercentages.foreach { case (title, columns) =>
    //      val missingPercentages = calculateMissingPercentages(df.columns)
    //      println(s"Taux de valeurs manquantes pour $title:")
    //      missingPercentages.foreach { case (colName, percentage) =>
    //        println(f"$colName%-30s ${percentage.toDouble}%10.6f")
    //      }
    //      println()
    //    }

    // 2.5) Effectuez une analyse descriptive des données pour comprendre la distribution des valeurs numériques.
    df.describe().show()

    // =========================================== 3. Nettoyage des données

    // 3.1) Créez une fonction pour remplacer les valeurs aberrantes par NaN
    val map = df.columns.map((_, "null")).toMap


    // 3.2) Exécutez-la sur la dataframe et faites une description des données nettoyées
    val dataframe = df.na.fill(map)

    // 3.3) Supprimez les lignes ayant des valeurs manquantes dans la colonne "product_name"
    val dataframe_droped = dataframe.na.drop
    val rowCount2 = dataframe_droped.count()
    val columnCount2 = dataframe_droped.columns.length
    println(s"Nombre de lignes : $rowCount2, Nombre de colonnes : $columnCount2")


    // 3.4) Remplacer les valeurs aberrantes de la colonne `salt_100g` par null via la fonction lit()
    val columnName = "salt_100g"
    val approxQuantiles = dataframe_droped.stat.approxQuantile(columnName, Array(0.10, 0.90), 0.0)
    val Q1 = approxQuantiles(0)
    val Q3 = approxQuantiles(1)
    val IQR = Q3 - Q1
    def findOutliers(value: Double, Q1: Double, Q3: Double): Boolean = {
      value < Q1 - 1.5 * IQR || value > Q3 + 1.5 * IQR
    }
    val isOutlierUDF = udf((value: Double) => findOutliers(value, Q1, Q3))
    val dfWithOutliers = df.withColumn("is_outlier", isOutlierUDF(col(columnName)))

    val outliersDF = dfWithOutliers.filter(col("is_outlier") === false)

    // salt column with outliers
    // dataframe_droped.select("salt_100g").distinct().show()

    // salt column without outliers
    // outliersDF.select("salt_100g").distinct().show()

    // 3.5) Décrire à nouveau les données nettoyées
    outliersDF.describe().show()

    //3.6) Filtrer les produits qui ont un nom à l’aide .filter(), col() et .isNotNull
    val productsWithName = outliersDF.filter(col("product_name").isNotNull)
    productsWithName.describe().show()
    val rowCountWithName = productsWithName.count()
    val columnCountWithName = productsWithName.columns.length
    println(s"Nombre de lignes : $rowCountWithName, Nombre de colonnes : $columnCountWithName")

    // 3.7) Chercher les produits contenant le mot "thé" dans le nom à l’aide .contains
    val productsWithThe = productsWithName.filter(col("product_name").contains("thé"))
    productsWithThe.show()

    // 3.8) Filtrer les produits qui ont une catégorie principale non nulle et créer une copie
    val productsWithMainCategory = productsWithName.filter(col("main_category_fr").isNotNull).cache()

    // 3.9) Créer une nouvelle colonne "rang_category" combinant "main_category_fr" et "categories_fr" à l’aide de .withColumn()
    val finalProcessedData = productsWithMainCategory.withColumn("rang_category", concat(col("main_category_fr"), lit(" - "), col("categories_fr")))
    finalProcessedData.describe().show()

    // PARTIE 4

    // 4.1) Définir les catégories que nous allons garder
    finalProcessedData.select("main_category_fr").distinct().show(truncate=false)
    // val categoriesToKeep = Seq("Thés verts", "Thés", "Boissons", "The-glace-a-la-peche", "Sirops") // Modify as needed
    val categoriesToKeep = Seq(
      "Alcool", "Boissons", "Boulangerie", "Céréales", "Charcuterie", "Desserts",
      "Epicerie", "Féculents", "Fruits", "Légumes", "Pains", "Pâtes", "Poissons",
      "Produits laitiers", "Repas", "Sauces", "Snacks", "Viandes"
    )

    // 4.2) Filtrer les produits qui appartiennent aux catégories définies
    //val filteredData = finalProcessedData.filter(col("main_category_fr").isin(categoriesToKeep: _*))
    val filteredData = finalProcessedData.filter(col("main_category_fr").isin(categoriesToKeep: _*))

    // 4.3) Définir les nouvelles catégories renommées « renamed_category »
    // val renamedCategories = Map("Thés verts" -> "Thés", "The-glace-a-la-peche" -> "Boissons")
    val renamedCategories = Map(
      "Alcool" -> "Beverages",
      "Boissons" -> "Beverages",
      "Boulangerie" -> "Bakery",
      "Céréales" -> "Cereals",
      "Charcuterie" -> "Meat",
      "Desserts" -> "Desserts",
      "Epicerie" -> "Grocery",
      "Féculents" -> "Starches",
      "Fruits" -> "Fruits",
      "Légumes" -> "Vegetables",
      "Pains" -> "Bread",
      "Pâtes" -> "Pasta",
      "Poissons" -> "Fish",
      "Produits laitiers" -> "Dairy",
      "Repas" -> "Meals",
      "Sauces" -> "Sauces",
      "Snacks" -> "Snacks",
      "Viandes" -> "Meat"
    )

    // 4.4) Créer un DataFrame avec les catégories originales et renommées
    val categoryDF = spark.createDataFrame(renamedCategories.toSeq).toDF("original", "renamed")

    // 4.5) Le joindre avec le dataframe de travail
    val joinedData = finalProcessedData.join(categoryDF, filteredData("main_category_fr") === categoryDF("original"))
    joinedData.describe().show()


    // 4.6) Supprimer la colonne "rang_category"
    val cleanedDataFinal = joinedData.drop("rang_category")

    // 4.7) Sélectionner uniquement les colonnes nécessaires
    val finalSelectedData = cleanedDataFinal.select("product_name", "renamed", "nutrition_grade_fr", "energy_100g", "fat_100g", "saturated-fat_100g", "sugars_100g", "sodium_100g", "salt_100g", "proteins_100g") // Modify as needed

    // 4.8) Remplir les valeurs manquantes pour product_name et renamed_category avec les
    //valeurs les plus fréquentes
    val filledData = finalSelectedData.na.fill(Map("product_name" -> "Unknown", "renamed" -> "Unknown"))

    // 4.9) Calculer les médianes pour les colonnes numériques et remplir les valeurs manquantes avec les médianes
    val medians = filledData.columns.filter(colName => filledData.schema(colName).dataType.isInstanceOf[NumericType]).map { colName =>
      val median = filledData.stat.approxQuantile(colName, Array(0.5), 0.0).head
      (colName, median)
    }.toMap
    val finalDataWithMedians = medians.foldLeft(filledData) { case (df, (colName, median)) =>
      df.na.fill(Map(colName -> median))
    }
    finalDataWithMedians.show()

    // PARTIE 5

    // 5.1) Réduisez le nombre de partitions du DataFrame à une seule. Utilisez coalesce(1) pour réduire le nombre de partitions
    // val singlePartitionData = finalDataWithMedians.coalesce(1)

    // 5.2) Enregistrez le DataFrame nettoyé au format CSV. Utilisez write.format("csv") pour enregistrer le DataFrame au format CSV.
    // singlePartitionData.write.format("csv").save("data/output.csv")

    //  Collect data to driver
    val collectedData = finalDataWithMedians.collect()
    // Write collected data to CSV file locally
    val outputPath = "data/output.csv"
    writeDataToCsv(collectedData, outputPath, finalDataWithMedians.columns)
  }


  // Function to write data to CSV
  def writeDataToCsv(data: Array[org.apache.spark.sql.Row], outputPath: String, columns: Array[String]): Unit = {
    val file = new File(outputPath)
    val pw = new PrintWriter(file)  // Initialize PrintWriter to write to the file

    // Write the header
    pw.println(columns.mkString("|"))  // Join column names with commas and write as header

    // Write the data rows
    data.foreach { row =>
      // Convert each row to a comma-separated string, replacing nulls with an empty string
      val rowString = row.toSeq.map {
        case null => ""  // Replace null with empty string
        case value => value.toString  // Convert non-null values to string
      }.mkString("|")
      pw.println(rowString)  // Write the row string to the file
    }

    pw.close()  // Close the PrintWriter to save the file
  }
}