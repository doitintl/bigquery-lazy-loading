#!/bin/python
from google.cloud import bigquery
bq_client = bigquery.Client(project='doit-playground')
table_ref = bq_client.dataset('views').table('wikipedia_views_gcs')
table = bigquery.Table(table_ref, schema=SCHEMA)
extconfig = bigquery.ExternalConfig('CSV')
extconfig.schema = [bigquery.SchemaField('line', 'STRING')]
extconfig.options.field_delimiter = u'\u00ff'
extconfig.options.quote_character = ''
extconfig.compression = 'GZIP'
extconfig.options.allow_jagged_rows = False
extconfig.options.allow_quoted_newlines = False
extconfig.max_bad_records = 10000000
extconfig.source_uris=["gs://wikimedia-pagecounts/page*"]
table.external_data_configuration = extconfig
bq_client.create_table(table)
