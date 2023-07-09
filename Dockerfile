from rust:slim-bookworm

RUN apt update && apt install -y curl git libssl-dev pkg-config

RUN adduser \
  --uid 1000 \
  --shell /bin/bash \
  --disabled-password \
  "heimdall"

USER heimdall
RUN curl -L http://get.heimdall.rs | bash
RUN /home/heimdall/.bifrost/bin/bifrost

COPY .bash_aliases /home/heimdall
WORKDIR /home/heimdall
