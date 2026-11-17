FROM node:22-bookworm-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      aria2 \
      mkvtoolnix \
      mediainfo \
      ffmpeg \
      curl \
      git \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work
