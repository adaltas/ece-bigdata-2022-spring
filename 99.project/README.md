# Big Data Project

Ingest and analyze [Internet Speed Dataset](https://www.kaggle.com/datasets/dhruvildave/ookla-internet-speed-dataset).

## Goals

- Develop a **PySpark application**
- **Load and parse** a dataset using Apache Spark
- Store data as a **partitioned table**
- **Query an external table** from Hive
- Create **analytical dashboards** with Zeppelin

## Subject

### Bronze table

1. Enrich the "bronze" `internet-speed-dataset` table with information from the directory/filename:

   - `year`
   - `quarter`
   - `file_date`
   - `benchmark_type` ("mobile" or "fixed")

2. Transform the `tile` column to [GeoJSON](https://geojson.org/geojson-spec.html):

   ```json
   {
     "type": "Feature",
     "geometry": {
       "type": "Polygon",
       "coordinates": [
         [
           [100.0, 0.0],
           [101.0, 0.0],
           [101.0, 1.0],
           [100.0, 1.0],
           [100.0, 0.0]
         ]
       ]
     }
   }
   ```

3. Save the "bronze" table partitioned by `year` and `quarter` in HDFS (in Parquet format)
4. Create a table with geolocation information about countries (bonus: regions, etc.). Find the data on the internet.

### Silver tables

1. Enrich the `internet-speed-dataset` with country (regions, etc.) informations
2. Save the result as a "silver" table partitioned by `year` and `quarter` (in Parquet format)

### Gold tables

1. Create an aggregated "gold" table with statistics by quarter and by country (regions, etc.) (in Parquet format)
2. Query the table from Zeppelin using Hive and create a dashboard with cool graphs
