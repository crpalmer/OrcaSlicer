FROM ubuntu:latest

# Install the packages we need
RUN apt-get update && apt-get install -y sudo
COPY build_linux.sh /app/build_linux.sh
COPY scripts /app/scripts
RUN /app/build_linux.sh -u
RUN rm -rf /app/build_linux.sh /app/scripts

CMD ["/app/docker.sh"]

