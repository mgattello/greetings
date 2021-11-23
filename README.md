# README

### Ruby on Rails

### Getting started

#### Build

```
docker-compose run --no-deps web rails new . --force --database=postgresql
```

#### What's happening?

`docker-compose` will create a Web application based on the Dockerfile. The `--no-deps` command tells Compose not to start linked services. After that, rails new is excecuted inside a new container using the same image.

Now that you’ve got a new Gemfile, you need to build the image again. (This, and changes to the Gemfile or the Dockerfile, should be the only times you’ll need to rebuild.)

```
docker-compose build
```

### Start the app

```
docker-compose up
docker-compose run web rake db:create
```

### Create Database

```
psql
# CREATE USER postgres SUPERUSER; -- or CREATE
# CREATE DATABASE myapp_development;
# CREATE DATABASE myapp_test;
```

### Stop the app

```
docker-compose down
```



Create Controller:

```
bin/rails generate controller Hello index --skip-routes
```

Create Model:

```
bin/rails generate model Hello name:string body:text
```

Migrate:

```
bin/rails db:migrate
```