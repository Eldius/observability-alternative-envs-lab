
ENV_NAME ?= dev

prepare:
	ansible-playbook \
		-i env/$(ENV_NAME) \
		playbooks/prepare-playbook.yml

clean:
	ansible-playbook \
		-i env/dev \
		-e "uninstall_grafana=false" \
		playbooks/clean-playbook.yml

loki:
	ansible-playbook \
		-i env/$(ENV_NAME) \
		playbooks/loki-playbook.yml


grafana:
	ansible-playbook \
		-i env/$(ENV_NAME) \
		playbooks/grafana-playbook.yml


prometheus:
	ansible-playbook \
		-i env/$(ENV_NAME) \
		playbooks/prometheus-playbook.yml


jaeger:
	ansible-playbook \
		-i env/$(ENV_NAME) \
		playbooks/jaeger-playbook.yml


collector:
	ansible-playbook \
		-i env/$(ENV_NAME) \
		playbooks/collector-playbook.yml


setup: prepare loki jaeger prometheus grafana collector
	@echo "Setup finished!"
