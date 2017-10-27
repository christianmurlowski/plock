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

## <TODO>  Add heroku setup