SELECT datehour, wiki, title, views
FROM `doit-playground.views.wikipedia_views_gcs_parsed`
WHERE EXTRACT(YEAR FROM datehour)=EXTRACT(YEAR FROM @run_time)
AND EXTRACT(MONTH FROM datehour)=EXTRACT(MONTH FROM @run_time)
AND EXTRACT(DAY FROM datehour)=EXTRACT(DAY FROM @run_time)
