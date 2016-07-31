# Education Personal Website

## Quick Start

1. Clone the repository and bundle install

  ```
  git clone https://github.com/LibraUIT/personal-website.git
  cd personal-website
  bundle install
  ```

2. Database configuration

  ```
  cp config/database.yml.sample config/database.yml
  ```

3. Setting up database

  ```
  rake db:create db:migrate
  ```

4. Start the web server

  ```
  bundle exec rails s
  ```

## Branch Policy

Local development branch naming:

- `feature/<branch_name>` for substantial new feature or function
- `enhance/<branch_name>` for minor feature or function enhancement
- `bugfix/<branch_name>` for bug fixes
- `maintenance/<branch_name>` for maintenance work

## Deploy
### Heroku

First Deploy

1. Pull new code from Git

  ```
  git push heroku v1:master
  ```
2. Config variable

  ```
  heroku config:set ADMIN_USERNAME = your_admin_username
  ```

  ```
  heroku config:set ADMIN_EMAIL = your_admin_email
  ```

  ```
  heroku config:set ADMIN_PASSWORD = your_admin_password
  ```

  ```
  heroku config:set SECRET_KEY_BASE = your secret_key_base
  ```

