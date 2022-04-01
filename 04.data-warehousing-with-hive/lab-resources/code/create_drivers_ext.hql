SET hivevar:username=gauthier;

CREATE EXTERNAL TABLE IF NOT EXISTS cs_2022_spring_1.${username}_nyc_drivers_ext (
  driver_id INT,
  -- COMPLETE HERE
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION --COMPLETE HERE
TBLPROPERTIES ('skip.header.line.count'='1');
