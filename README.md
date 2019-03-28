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


set up the db 

```
docker-compose run --rm web rails g model Joke body:text
docker-compose run --rm web rails db:create db:migrate
```

set up git
```aidl
git init

```

set up heroku
```
heroku create
heroku container:login
$ heroku container:push web
$ heroku container:release web
```
