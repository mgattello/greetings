# README

### Ruby on Rails

### Getting started

#### Build

```
docker-compose build
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
docker-compose up # add -d to run docker containers in the background
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
docker-compose run web bin/rails generate controller Hello index --skip-routes
```

Create Model:

```
docker-compose run web bin/rails generate model Hello lang:string word:text
```

Migrate:

```
docker-compose run web  bin/rails db:migrate
docker-compose run web  bin/rails console
```

Drop a table:

```
bin/rails generate migration DropHellos
```

```
class DropHellos < ActiveRecord::Migration[5.2]
  def change
    drop_table :hellos
  end
end
```

```
docker-compose run web  bin/rails db:migrate RAILS_ENV=development
```

### Partials

`_form.html.erb`

```
<%= render "form", hello: @hello %>
```


# 1. <a href="/hellos/<%= hello.id %>"> 
# 2. <a href="<%= hello_path(hello) %>">
# 3. <%= link_to hello.name, hello %>