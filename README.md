## Running

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Heroku

Create new Heroku app and set up config. Prerequisites include:

* Slack integration token from the Slash command configuration process: ![](http://share.ryandaigle.com/hdu28-20160108180702.png)
* Google custom search engine id
* Google API key from [Google Developer's Console](https://console.developers.google.com/apis/credentials)

```bash
$ heroku create spreedly-docs-slackbot
$ heroku buildpacks:add https://github.com/HashNuke/heroku-buildpack-elixir.git
$ heroku config:set APP_SECRET_KEY_BASE=`openssl rand -hex 32`
$ heroku config:set SLACK_TOKEN=<token from the Slack slash command integration setup>
$ heroku config:set GOOGLE_CSE_ID=<CSE search engine id>
$ heroku config:set GOOGLE_API_KEY=<Google developer API key>
```

To deploy:

```
$ git push heroku master
```
