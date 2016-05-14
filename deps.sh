docker pull benhall/iperf:latest
docker pull ubuntu:xenial
docker pull redis:2.8
docker pull benhall/oscon2016-pg:latest
docker pull benhall/elasticsearch:1.4.2
docker pull benhall/strace:latest
docker pull benhall/strace-ubuntu:latest
docker build -f docker-images/io-perf/Dockerfile docker-images/io-perf

# Optional (it's large download so depends on wifi)
# docker pull benhall/metasploit:latest
# docker pull benhall/redis:novol
