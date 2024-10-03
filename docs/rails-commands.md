# Rails Commands

Rails Console: `rails c`

? Rails env `rails r "puts Rails.env"`

See current database:
```bash
rails c
ActiveRecord::Base.connection.current_database
```

Migrate: `rails db:migrate`

Linting with `rubocop`: `rubocop`

Install dependencies: `bundle install`
