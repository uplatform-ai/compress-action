FROM registry.uplatform.team/devops/brotli:v1
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
