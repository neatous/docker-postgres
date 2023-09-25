FROM library/postgres:16.0

RUN apt-get update && apt-get install -y \
        locales \
        locales-all \
        postgis \
        postgresql-16-postgis-3

RUN rm -rf /var/lib/apt/lists/*

ENV LANG cs_CZ.UTF-8
ENV LANGUAGE cs_CZ
ENV LC_ALL cs_CZ.UTF-8
ENV TERM xterm
