# Portfolio

A personal portfolio website built with Phoenix LiveView.

## Development Setup

### Prerequisites

* Elixir 1.18+ and Erlang/OTP 26+
* Node.js 22+

### Getting Started

1. **Install and setup dependencies:**
   ```bash
   mix setup
   ```

2. **Set resume URL (optional):**
   ```bash
   export RESUME_URL="https://your-s3-url/resume.pdf"
   ```

3. **Start the Phoenix server:**
   ```bash
   mix phx.server
   ```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Deployment

This application is configured to deploy to Fly.io with CI/CD via GitHub Actions.

### Required Secrets

Set the following secrets in Fly.io:
```bash
fly secrets set SECRET_KEY_BASE=$(mix phx.gen.secret)
fly secrets set RESUME_URL="https://your-s3-url/resume.pdf"
```

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
