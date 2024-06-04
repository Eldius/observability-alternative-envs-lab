
loki:
	ansible-playbook \
		-i env/dev \
		playbooks/loki-playbook.yml

grafana:
	ansible-playbook \
		-i env/dev \
		playbooks/grafana-playbook.yml

jaeger:
	ansible-playbook \
		-i env/dev \
		playbooks/jaeger-playbook.yml

setup: loki jaeger grafana

test:
	# ansible-playbook \
	# 	-i env/dev \
	# 	playbooks/grafana-loki-datasource.yml
	ansible-playbook \
		-i env/dev \
		playbooks/grafana-loki-dashboard.yml
	