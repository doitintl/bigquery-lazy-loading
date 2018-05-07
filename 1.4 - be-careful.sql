SELECT SUM(views) views
  , COUNT(DISTINCT filename) files
  , COUNT(*) n_rowsFROM `doit-playground.views.wikipedia_views_gcs_parsed`
