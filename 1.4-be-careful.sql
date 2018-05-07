#standardSQL
SELECT SUM(views) views
  , COUNT(DISTINCT filename) files
  , COUNT(*) n_rows FROM `doit-playground.views.wikipedia_views_test_ddl`