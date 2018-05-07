#standardSQL
SELECT datehour, title, views
FROM `doit-playground.wikipedia_v2.pageviews_2016`
WHERE DATE(datehour) BETWEEN "2016-02-10" AND "2016-02-28" 
AND wiki = 'en.m'
AND title IN ('Curling', 'Bobsleigh')