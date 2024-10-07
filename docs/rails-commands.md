# Rails Commands

See Rails env `rails r "puts Rails.env"`

Migrate: `rails db:migrate`

Linting: `rubocop`

Install dependencies: `bundle install`

Rails Console: `rails c`

---

### Testing

Run tests: `rails test`

Generate coverage report: `COVERAGE=true rails test`

Count SLOC: `rake stats`

---

### Misc

Generate password: `BCrypt::Password.create('password1')`

See current database: `ActiveRecord::Base.connection.current_database`

Read a gem: `bundle open ${gem-name}`
