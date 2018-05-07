#standardSQL
SELECT COUNT(*) rs
FROM `doit-playground.views.wikipedia_views_gcs` 
WHERE _FILE_NAME = 'gs://wikimedia-pagecounts/pageviews-20150501-010000.gz'