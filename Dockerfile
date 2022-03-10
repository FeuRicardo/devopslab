FROM python:rc-slim

# Declarando a váriavel do nome do arquivo de configuração do NewRelic
ENV NEW_RELIC_CONFIG_FILE=newrelic.ini  NEW_RELIC_LICENSE_KEY=licensekey

WORKDIR /app

COPY . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD ["newrelic-admin", "run-program", "gunicorn", "app:app"]
