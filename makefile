build:
	docker build -t node-tls-client-demo .

run:
	docker run --name node-tls-client-demo --rm -d  -v "$(shell pwd)/ca.pem:/home/node/app/ca.pem" -e NODE_EXTRA_CA_CERTS=ca.pem -e FETCH_URL=https://192.168.1.132:9443 -e FETCH_INTERVAL_MS=3000 node-tls-client-demo

kill:
	docker kill node-tls-client-demo