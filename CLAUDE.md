Below is the cleaned-up, toys-and-art-free version, formatted properly in Markdown.

---

# CLAUDE.md

This file instructs Claude Code (claude.ai/code) on how to work inside this repository. Treat this as the authoritative guide for coding conventions, workflow, and assumptions.

## Project Overview

This is my personal website and portfolio, built with **Ruby on Rails 8.1**.
It includes a clean CMS-style backend for managing content such as articles, projects, investments, podcasts, and books.
The codebase stays close to Rails defaults—minimal dependencies, readable structure, predictable behavior.

## Essential Commands

### Development

* `bin/dev` — Start full development environment (Rails on port 3000 + Tailwind watcher)
* `bin/rails server` — Rails server only
* `bin/rails console` — Rails console

### Testing

* `bin/rails test` — Run full test suite
* `bin/rails test test/models/article_test.rb` — Run a specific test file
* `bin/rails test test/models/article_test.rb:5` — Run a single test line

### Database

* `bin/rails db:migrate` — Run pending migrations
* `bin/rails db:seed` — Load seed data
* `bin/rails db:reset` — Drop, create, migrate, seed

### Asset Management

* `bin/rails assets:precompile` — Build production assets
* `bin/rails tailwindcss:build` — Manual Tailwind build

## Architecture Overview

### Authentication

The app uses **custom session-based authentication**.
Do **not** assume Devise patterns unless explicitly instructed.

Key locations:

* `app/controllers/application_controller.rb` — `authenticate!`, `current_user`, shared helpers
* `app/controllers/sessions_controller.rb` — login/logout
* `app/models/user.rb` — password handling

### Content Types

Each content type uses standard Rails conventions:

* Model → `app/models/`
* Controller → `app/controllers/`
* Views → `app/views/[resource]/`
* Admin interface → `/admin/[resource]` (authentication required)

Current content types:

* Articles
* Projects
* Investments
* Podcasts
* Books

### Frontend Architecture

* **Hotwire (Turbo + Stimulus)** — interactive behavior
* **Tailwind CSS** — custom theme
* **Importmap** — JS modules without bundlers
* **Redcarpet** — Markdown rendering

Claude should **not** introduce React, bundlers, or any complex JS unless I request it.

### File Storage

Active Storage uses AWS S3:

* All uploads stored in S3
* Config lives in `config/storage.yml`
* Direct uploads enabled

### Key Config Files

* `config/routes.rb` — routing and namespace structure
* `config/importmap.rb` — JS dependencies
* `config/tailwind.config.js` — Tailwind theme
* `config/database.yml` — PostgreSQL configuration

## Development Workflow Notes

1. Tailwind requires the watcher running via `bin/dev`.
2. JS updates (Importmap) are instant—no compilation step.
3. PostgreSQL must be running locally.
4. Tests use fixtures located in `test/fixtures/`.
5. Admin routes (`/admin/*`) require authentication.

## Guidance for Claude

* Follow existing architecture—don’t invent new patterns.
* Do **not** introduce extra gems, services, or stack changes unless I approve.
* Keep everything Rails-idiomatic: thin models, clean controllers, simple views.
* When unsure, ask before generating code.
* Only work on the specific resource or area I mention. Never assume cross-resource changes.

---

If you want, I can generate a stricter version with “Allowed / Not Allowed” sections or add a companion `CHATGPT.md` for consistency.
