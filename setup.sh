#!/bin/bash
docker compose build --no-cache
docker compose run web rails new . --force --no-deps --database=postgresql --skip-git
docker compose run web echo "default: &default
	adapter: postgresql
	encoding: unicode
	host: db
	username: postgres
	password: password
	pool: 5

development:
	<<: *default
	database: blog_development

test:
	<<: *default
	database: blog_test
" > ./blog/config/database.yml
docker compose run web rails db:create