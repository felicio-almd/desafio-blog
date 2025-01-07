#!/usr/bin/env bash
# bin/render-build.sh

# Exit on error
set -o errexit

# Bundle install
bundle install

# Build Tailwind CSS
bundle exec rails tailwindcss:build

# Clean and precompile assets
bundle exec rake assets:clean
bundle exec rake assets:precompile

# Run database migrations (não incluímos db:create porque o Render já cria o banco)
bundle exec rake db:migrate

bundle exec sidekiq -d -L sidekiq.log -e production
# Rode as seeds apenas se necessário (descomente se precisar)
# bundle exec rails db:seed