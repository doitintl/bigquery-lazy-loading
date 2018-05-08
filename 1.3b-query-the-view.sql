#standardSQL
SELECT COUNT(*) n_rows, SUM(views) views
  , ARRAY_AGG(DISTINCT filename) files
FROM `doit-playground.views.wikipedia_views_gcs_parsed`
WHERE EXTRACT(YEAR FROM datehour)=2015
AND EXTRACT(MONTH FROM datehour)=10
AND EXTRACT(DAY FROM datehour)=21
AND EXTRACT(HOUR FROM datehour)=7
