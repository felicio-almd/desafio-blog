#!/bin/bash

# Inicia o Puma em segundo plano
bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-production} &

# Aguarda 10 segundos para garantir que o Puma tenha iniciado
sleep 10

# Inicia o Sidekiq
bundle exec sidekiq -L sidekiq.log -e production -C config/sidekiq.yml
