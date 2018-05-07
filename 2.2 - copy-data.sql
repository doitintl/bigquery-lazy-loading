INSERT INTO `doit-playground.wikipedia_v2.pageviews_2016` (datehour, wiki, title, views)
WITH hours_already_loaded as (
  SELECT DISTINCT datehour FROM `doit-playground.wikipedia_v2.pageviews_2016`
  WHERE datehour > '2000-01-01')
SELECT datehour, wiki, title, views
FROM `doit-playground.views.wikipedia_views_gcs_parsed` t1
WHERE EXTRACT(YEAR FROM datehour)=2016
AND NOT EXISTS (SELECT * FROM hours_already_loaded t2 WHERE t2.datehour = t1.datehour)
