
loki:
	ansible-playbook \
		-i env/dev \
		playbooks/loki-playbook.yml

jaeger:
	ansible-playbook \
		-i env/dev \
		playbooks/jaeger-playbook.yml
