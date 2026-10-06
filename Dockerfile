FROM python:3.12-slim
RUN pip install --no-cache-dir beancount fava beangulp smart_importer
WORKDIR /data
EXPOSE 5000
ENTRYPOINT ["fava", "--host", "0.0.0.0"]
CMD ["/data/main.beancount"]