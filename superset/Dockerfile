FROM apache/superset:2.0.1

ARG SUPERSET_ADMIN
ARG SUPERSET_PASSWORD

USER root
RUN pip install psycopg2-binary==2.9.1
RUN pip install duckdb-engine==0.9.2
RUN pip install duckdb==0.9.2

#TODO: switch to requirements.txt
# COPY requirements.txt /requirements.txt
# RUN pip install -r /requirements.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER superset

ENTRYPOINT ["/entrypoint.sh"]
