curl -X POST -d @sample_data/click_events 'http://localhost:8990/solr/heatmap/update?commit=true' -H 'Content-Type:application/json'