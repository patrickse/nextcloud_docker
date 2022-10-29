FROM nextcloud:25

RUN apt-get update && \
      apt-get install -y procps smbclient curl apt-transport-https && \
      curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor -o /usr/share/keyrings/postgresql-keyring.gpg && \
      echo "deb [signed-by=/usr/share/keyrings/postgresql-keyring.gpg] http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main" | tee /etc/apt/sources.list.d/postgresql.list && \
      apt-get update && apt-get install -y postgresql-client-14 && \
      rm -rf /var/lib/apt/lists/*
