# larakelley.com

> My little corner of the internet :sparkles:

---

This is the code for my [website](https://larakelley.com). It's
intentionally a little overkill for a personal website, as it functions as
a playground for experimentation with web frameworks and APIs.

Feel free to copy whatever you like from the repository for personal use!

## Stack

I built this site with the following:

### Back-end

- [SQLite](https://www.sqlite.org) - File-based database
- [Go](https://go.dev) - Go programming language
  - [Chi](https://go-chi.io) - Web server framework
  - [Goose](https://pressly.github.io/goose) - Database migrations
  - [Air](https://github.com/air-verse/air) - Live reloading in development
- [Docker](https://daisyui.com) - Container app runs in
- [Docker Compose](https://docs.docker.com/compose) - Run app and supporting services in development

### Front-end

- [d3](https://d3js.org) - Data visualization
- [Alpine.js](https://alpinejs.dev) - Lightweight UI framework
- [htmx](https://htmx.org/docs) - Lightweight interfacing with web server
- [Tailwind CSS](https://tailwindcss.com) - CSS framework
- [Daisy UI](https://daisyui.com) - Some lovely utility classes for Tailwind

### Hosting

- [AWS](https://aws.amazon.com) - Where everything lives
- [Terraform](https://www.terraform.io) - Infrastructure as code

## Installation and setup

First, clone the repository:

``` shell
git clone git@github.com:lararosekelley/larakelley.com
```

Copy `.env.example` to `.env` and update as needed.

Run database migrations with `make migrate:up`. The database is a SQLite file
so there's no need to start up a database server.

### Makefile usage

The `Makefile` contains the following commands:

1. Build the application: `make build`
2. Run the application: `make run`
3. Shut down containers: `make down`

### Database migrations

I use the `goose` package for handling migrations. See the [documentation](https://github.com/pressly/goose) for more.

## Features

- Offline-first
- Mobile-friendly
- Light and dark themes with high contrast options
- A blog, mostly containing brief musings on my life, spirituality, and society in general
  - Email subscription for new blog posts
  - RSS feed of my blog
- Information about my musical projects
  - A cute music player featuring my own works
- Some fun real-time data visualization powered by WebSockets and D3
- My resume
- Contact form to say hi to me!
- High emphasis on accessibility (a11y)

## License

Mozilla Public License 2.0. See [LICENSE](./LICENSE) for more.
