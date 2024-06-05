
prepare:
	ansible-playbook \
		-i env/dev \
		playbooks/prepare-playbook.yml

loki:
	ansible-playbook \
		-i env/dev \
		playbooks/loki-playbook.yml


grafana:
	ansible-playbook \
		-i env/dev \
		playbooks/grafana-playbook.yml


prometheus:
	ansible-playbook \
		-i env/dev \
		playbooks/prometheus-playbook.yml


jaeger:
	ansible-playbook \
		-i env/dev \
		playbooks/jaeger-playbook.yml


collector:
	ansible-playbook \
		-i env/dev \
		playbooks/collector-playbook.yml


setup: prepare loki jaeger prometheus grafana
	@echo "Setup finished!"
