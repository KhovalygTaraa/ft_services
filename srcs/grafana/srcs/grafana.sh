mv grafana.ini /etc/grafana.ini
rm /usr/share/grafana/conf/provisioning/datasources/sample.yaml
rm /usr/share/grafana/conf/provisioning/dashboards/sample.yaml
mv datasrc.yaml /usr/share/grafana/conf/provisioning/datasources/influxdb.yaml
mv dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/dashboards.yaml
mkdir /usr/share/grafana/conf/provisioning/dashboards/swquinc
mv dboards/* /usr/share/grafana/conf/provisioning/dashboards/swquinc/
grafana-server --config=/etc/grafana.ini --homepath=/usr/share/grafana