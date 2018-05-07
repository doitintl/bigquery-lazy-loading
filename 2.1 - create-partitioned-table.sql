CREATE TABLE `doit-playground.wikipedia_v2.pageviews_2016`
 (datehour TIMESTAMP, wiki STRING, title STRING, views INT64)
 PARTITION BY DATE(datehour) OPTIONS(
   description = 'Wikipedia pageviews from http://dumps.wikimedia.your.org/other/pageviews/'
   , require_partition_filter = true
 )
