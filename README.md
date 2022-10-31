# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Commands
``` bash
docker-compose up
```

# Open rails console
```bash
    docker-compose exec api bash
```


# Create/migrate/drop rails database
```bash
    rails db:create
    rails db:create RAILS_ENV=test
    rails db:migrate RAILS_ENV=test
    rails db:drop RAILS_ENV=test
```

## RSPEC commands
For installing rspec
``` bash
    rails g rspec:install
```

For creating a new rspec model
```bash
    rails g rspec:model User
```

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
