FROM ubuntu:latest

COPY . /tmp

RUN /tmp/setup-10-apt.sh
RUN /tmp/setup-20-erlang.sh
RUN /tmp/setup-21-ruby.sh
RUN /tmp/setup-22-python.sh
RUN /tmp/setup-30-create-user.sh
RUN /tmp/setup-31-configure-user.sh
RUN /tmp/setup-99-cleanup.sh

USER tsutsu
WORKDIR /home/tsutsu
ENV \
  LANG=en_US.UTF-8 \
  LANGUAGE=en_US:en \
  LC_ALL=en_US.UTF-8 \
  TZ=America/Vancouver

RUN /tmp/setup-60-configure-user.sh

CMD ["/bin/bash", "-il"]
