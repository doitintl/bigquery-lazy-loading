#standardSQL
SELECT datehour, title, views
FROM `doit-playground.wikipedia_v2.pageviews_2018`
WHERE DATE(datehour) BETWEEN "2018-02-10" AND "2018-02-28"
AND wiki = 'en'AND title IN ('Curling', 'Bobsleigh')
