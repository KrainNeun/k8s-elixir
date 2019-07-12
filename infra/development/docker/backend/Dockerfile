FROM elixir:1.6-otp-21

ENV NODE_VERSION 10
ENV PHOENIX_VERSION 1.4.9

RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash \
    && apt-get install -y nodejs inotify-tools \
    && npm install n yarn -g \
    && n stable \
    && npm update -g npm \
    && mix local.hex --force \
    #&& mix archive.install --force hex phx_new ${PHOENIX_VERSION} \
    # Version 1.3.x
    && mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez \
    && mix local.rebar --force

WORKDIR /app
