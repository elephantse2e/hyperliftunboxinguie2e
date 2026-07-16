FROM python:3-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8000
WORKDIR /app
COPY index.html ./
ENV TEST="test"
# CMD ["exit", "1"]
CMD ["python3", "-m", "http.server", "8080"]
