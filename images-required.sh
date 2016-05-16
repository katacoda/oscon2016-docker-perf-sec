docker pull benhall/iperf:latest
docker pull ubuntu:xenial
docker pull redis:3.2-alpine
docker pull benhall/oscon2016-pg:latest
docker pull benhall/elasticsearch:1.4.2
docker pull benhall/strace:latest
docker pull benhall/strace-ubuntu:latest
docker pull nginx:1.9
docker pull dockito/vault
docker pull consul:v0.6.4
docker pull cgswong/vault:latest
docker build -f docker-images/io-perf/Dockerfile docker-images/io-perf

# Optional (it's large download so depends on wifi)
# docker pull benhall/metasploit:latest
# docker pull benhall/redis:novol
