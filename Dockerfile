FROM python:3.12-slim

LABEL description="Simple Python HTTP server for container training" \
      version="3.0"

RUN mkdir -p /opt/src && \
    chown -R 1001:0 /opt/src && \
    chmod -R 775 /opt/src

COPY --chown=1001:0 index.html /opt/src/

WORKDIR /opt/src

USER 1001

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]
