# syntax=docker/dockerfile:1.7
FROM --platform=linux/amd64 ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8
RUN apt-get update && apt-get install -y --no-install-recommends \
      python3 xz-utils file ca-certificates git make \
 && rm -rf /var/lib/apt/lists/*
RUN --mount=type=bind,source=sdk.sh,target=/tmp/sdk.sh \
    sh /tmp/sdk.sh -y -d /opt/sdk
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
WORKDIR /work
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["bash"]