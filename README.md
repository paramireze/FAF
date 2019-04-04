# README

Ruby rails app that uses docker-compose combined with Heroku for easy mode

https://medium.com/firehydrant-io/developing-a-ruby-on-rails-app-with-docker-compose-d75b20334634

# set up the db 

```
docker-compose run --rm web rails g model Category name:text top_category:text sub_category:text order:integer 
docker-compose run --rm web rails g model Question category:references  text:text required:boolean order:integer type:text
docker-compose run --rm web rails g model User first_name:text last_name:text active:boolean email:text user_name:text
docker-compose run --rm web rails g model Entry category:references user:references
docker-compose run --rm web rails db:create db:migrate
```

# set up git
```
git init
git commit -m "first commit"
git remote add origin https://github.com/paramireze/FAF.git
git push -u origin master

```

# set up heroku
```
heroku create
heroku container:login
heroku container:push web
heroku container:release web
heroku addons:create heroku-postgresql:hobby-dev
heroku config:set RAILS_ENV=production SECRET_KEY_BASE=supersecret RAILS_LOG_TO_STDOUT=true
heroku run rails db:migrate
heroku open
```

# running tests

set up the test database
``` 
docker-compose run --rm web rails db:create RAILS_ENV=test
```

run the test on category model
```
docker-compose run --rm web rails test test/models/category_test.rb
```

