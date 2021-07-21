#syntax=docker/dockerfile:experimental
FROM python:3.6-slim as build
WORKDIR /app
COPY src/requirements.txt /app
RUN --mount=type=cache,target=~/.cache/pip \
      pip3 install -r requirements.txt && \
      python3 -m textblob.download_corpora

FROM build as runtime
COPY src /app
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["sentiment_analysis.py"]