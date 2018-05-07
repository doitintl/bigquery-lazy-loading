#standardSQL
CREATE VIEW `doit-playground.views.wikipedia_views_gcs_parsed`
AS SELECT
  PARSE_TIMESTAMP('%Y%m%d-%H%M%S', REGEXP_EXTRACT(_FILE_NAME, '[0-9]+-[0-9]+')) datehour
  , REGEXP_EXTRACT(line, '([^ ]*) ') wiki
  , REGEXP_EXTRACT(line, '[^ ]* (.*) [0-9]+ [0-9]+') title
  , CAST(REGEXP_EXTRACT(line, ' ([0-9]+) [0-9]+$') AS INT64) views
  , CAST(REGEXP_EXTRACT(line, ' ([0-9]+)$') AS INT64) zero
  , _FILE_NAME filename
  , line
FROM `doit-playground.views.wikipedia_views_gcs`WHERE REGEXP_EXTRACT(line, ' ([0-9]+) [0-9]+$') IS NOT NULL # views
AND REGEXP_EXTRACT(line, ' ([0-9]+)$') = '0' # zero