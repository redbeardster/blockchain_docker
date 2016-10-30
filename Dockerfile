from ubuntu:16.04
run apt-get update
run apt-get install -y git npm nodejs nginx supervisor
run ln -s /usr/bin/nodejs /usr/bin/node
run npm install -g blockchain-wallet-service
expose 3000
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
