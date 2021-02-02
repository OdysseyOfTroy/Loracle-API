# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Run API command: docker-compose up web
DROP REBUILD and SEED: docker-compose run --rm web bin/rails db:drop db:create db:migrate db:seed

Run tests: docker-compose run --rm -e RAILS_ENV=test web bundle exec rspec 
Can give directory e.g: docker-compose run --rm -e RAILS_ENV=test web bundle exec rspec spec/models/ - will run all model tests


New migration: docker-compose run --rm web bin/rails g migration (Migration name) (Field name: Field type)
New scaffold: docker-compose run --rm web bin/rails g scaffold (Table name) (Field name:Field type)

Rails build if change gems: docker-compose build