FROM ubuntu:latest
RUN apt update && apt install  gcc -y
RUN apt install -y clamav
RUN freshclam
RUN echo "echo 'program stating!!!' \
    &&./temp &&echo '\nprogram end!!!' \
    &&clamscan temp">>run.sh
COPY temp /
CMD ["/bin/sh","run.sh"]