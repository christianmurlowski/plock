# PLOCK - The planner in your pocket

## Requiremenets
1. Ruby installed
3. Rbenv or rvm installed
2. SQLite installed

## Setup for development

### Step 1 - Set ruby version
`rbenv install 2.4.0`

### Step 2 - Install bundler
`gem install bundler`

### Step 3 - Bundle dependencies
`bundle install`

### Step 4 - Setup the database
`bundle exec rails db:setup`

### Step 5 - Start the server
`bundle exec rails s`

Your application will run under http://localhost:3000/

## Heroku setup

### Step 1 - Install Heroku CLI
https://devcenter.heroku.com/articles/heroku-cli

### Step 2 - Login into the CLI
`heroku login`

Enter your credentials

### Step 3 - Ruby version
Make sure the ruby version is specified in the `Gemfile`. For example:
`ruby '2.4.0'`

### Step 4.1 - If no Heroku app exists --> Create a new Heroku app
`heroku create`

### Step 4.2 - If a Heroku app already exists --> Add remote to local repository
`heroku git:remote -a <heroku app name>`

## Heroku deploy

### Step 1 - Deploy your code
`git push heroku master`

### Step 2 - Delete existing DB if needed
`heroku pg:reset DATABASE_URL`

### Step 3 - Migrate database
`heroku run rake db:migrate`

### Step 4 - Open app in browser
`heroku open`
