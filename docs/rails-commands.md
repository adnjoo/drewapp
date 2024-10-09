# Rails Commands

### General

- **See Rails env:**  
  `rails r "puts Rails.env"`
- **Linting:**  
  `rubocop`
- **Install dependencies:**  
  `bundle install`
- **Rails Console:**  
  `rails c`

### Generators

- **Destroy a controller:**  
  `rails destroy controller <controller-name>`

### Testing

- **Run all tests:**  
  `rails test:all`
- **Run specific tests:**  
  `rails test`
- **Verbose mode:**  
  `rails test --verbose`
- **Generate coverage report:**  
  `COVERAGE=true rails test`
- **Run system tests:**  
  `rails test:system`

### Database

- **Create database:**  
  `rails db:create`
- **Run migrations:**  
  `rails db:migrate`

### Miscellaneous

- **Count SLOC:**  
  `rake stats`
- **Save stats to file:**  
  `rake custom:stats_to_file`
- **Generate a password:**  
  `BCrypt::Password.create('password1')`
- **See current database:**  
  `ActiveRecord::Base.connection.current_database`

### Read a Gem 💎

```bash
export EDITOR="code --wait"
bundle open ${gem-name}
```
