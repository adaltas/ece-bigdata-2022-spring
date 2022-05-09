# Big Data Project

Ingest and analyze [Internet Speed Dataset](https://www.kaggle.com/datasets/dhruvildave/ookla-internet-speed-dataset).

## Deadline

March 15th 2022

## Goals

- Develop a **PySpark application**
- **Load and parse** a dataset using Apache Spark
- Store data as a **partitioned table**
- **Query an external table** from Hive
- Create **analytical dashboards** with Zeppelin

## Subject

**Important:**

- Comment your code
- Give access to the notebooks to `gauthier`
- Store the tables in `/education/ece_2022_spring_app_1/group-${GROUP_NB}-${NAME_1}-${NAME_2}`
- Store the notebooks in `/ece/2022-spring/group/group-${GROUP_NB}-${NAME_1}-${NAME_2}`

### Bronze table

1. Enrich the "bronze" `internet-speed-dataset` table with information from the directory/filename:

   - `year`
   - `quarter`
   - `file_date`
   - `benchmark_type` ("mobile" or "fixed")

2. Save the "bronze" table partitioned by `year` and `quarter` in HDFS (in Parquet format)
3. (Done) Create a table with geolocation information about countries (bonus: regions, etc.). Find the data on the internet. -> `/education/ece_2022_spring_app_1/resources/project/countries/countries.geojson`

### Silver tables

1. Create a new column with the `tile` stored as [GeoJSON](https://geojson.org/geojson-spec.html):

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

2. Enrich the `internet-speed-dataset` with country (regions, etc.) informations
3. Save the result as a "silver" table partitioned by `year` and `quarter` (in Parquet format)

### Gold tables

1. Create an aggregated "gold" table with statistics by quarter and by country (regions, etc.) (in Parquet format)
2. Query the table from Zeppelin using Hive and create a dashboard with cool graphs
