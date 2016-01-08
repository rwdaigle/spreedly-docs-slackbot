## Running

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Heroku

Create new Heroku app and set up config:

```bash
$ heroku create spreedly-docs-slackbot
$ heroku buildpacks:add https://github.com/HashNuke/heroku-buildpack-elixir.git
$ heroku config:set APP_SECRET_KEY_BASE=`openssl rand -hex 32`
```

To deploy:

```
$ git push heroku master
```
