FROM mcr.microsoft.com/vscode/devcontainers/python:3.11

ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN if [ "$USER_GID" != "1000" ] || [ "$USER_UID" != "1000" ]; then \
        groupmod --gid $USER_GID vscode && \
        usermod --uid $USER_UID --gid $USER_GID vscode; \
    fi

WORKDIR /app

COPY profiles.yml ./
COPY dbt_project.yml ./
COPY requirements.txt ./
COPY entrypoint.sh ./
COPY models/ ./models/
COPY seeds/ ./seeds/

RUN pip3 install --upgrade pip && \
    pip3 install --requirement /app/requirements.txt

RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
