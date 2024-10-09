# Rails Commands

See Rails env `rails r "puts Rails.env"`

Linting: `rubocop`

Install dependencies: `bundle install`

Rails Console: `rails c`

### Generator

Destroy: `rails destroy controller Games`

### Testing

Run all tests: `rails test:all`

Run tests: `rails test`

Verbose: `rails test --verbose`

Generate coverage report: `COVERAGE=true rails test`

Count SLOC: `rake stats`

System test: `rails test:system`

### Database

Create: `rails db:create`

Migrate: `rails db:migrate`

### Misc

Generate password: `BCrypt::Password.create('password1')`

See current database: `ActiveRecord::Base.connection.current_database`

Read a gem: 

```bash
export EDITOR="code --wait"
bundle open ${gem-name}`
```
