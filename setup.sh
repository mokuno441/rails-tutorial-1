#!/bin/bash
docker compose build
docker compose run web rails new . --force --no-deps --database=postgresql --skip-git
docker compose build
echo "default: &default
    adapter: postgresql
    encoding: unicode
    host: db
    username: postgres
    password: password
    pool: 5

development:
    <<: *default
    database: blog_development1

test:
    <<: *default
    database: blog_test
" > ./blog/config/database.yml
docker compose run web rails db:create
docker-compose up -d