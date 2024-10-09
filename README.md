# DrewApp

DrewApp is a productivity tool that help users manage tasks effectively.

[![CI](https://github.com/adnjoo/rails/actions/workflows/ci.yml/badge.svg)](https://github.com/adnjoo/rails/actions/workflows/ci.yml)

![Alt](https://repobeats.axiom.co/api/embed/d32eb33e7a17482461b9ffcf3163105e46259832.svg "Repobeats analytics image")

## Table of Contents

1. [Getting Started](#getting-started)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Running the Application](#running-the-application)
5. [Running Tests](#running-tests)
6. [Deployment](#deployment)
7. [Contributing](#contributing)
8. [License](#license)

## Getting Started

These instructions will guide you through setting up the DrewApp project on your local machine for development and testing.

### Prerequisites

Ensure you have the following installed on your machine:

- Ruby 3.2.1
- Rails 7.x.x
- PostgreSQL (for database)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/adnjoo/drewapp.git
   cd drewapp
   ```

2. Install the necessary Ruby gems:

   ```bash
   bundle install
   ```

3. Install the JavaScript dependencies using Yarn:

   ```bash
   yarn install
   ```

4. Set up the database:

   ```bash
   rails db:create
   rails db:migrate
   ```

### Running the Application

To start the Rails server, run the following command:

```bash
bin/dev
```

This will run the Rails server and other services like Webpack (or esbuild, if configured) to watch for frontend asset changes.

### Running Tests

To run the test suite, use the following command:

```bash
bin/rails test
```

You can also run system tests with:

```bash
bin/rails test:system
```

### Deployment

To deploy DrewApp to a production environment, follow these steps (depending on your deployment service):

1. Ensure all environment variables are set
2. Run database migrations:

   ```bash
   rails db:migrate
   ```

3. Restart the application

### Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create a new PR

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
