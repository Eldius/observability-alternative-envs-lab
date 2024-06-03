
loki:
	ansible-playbook \
		-i env/dev \
		loki-playbook.yml

jaeger:
	ansible-playbook \
		-i env/dev \
		jaeger-playbook.yml
