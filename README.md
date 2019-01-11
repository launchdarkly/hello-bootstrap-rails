# hello-bootstrap-rails

A Rails app demonstrating LaunchDarkly server-side bootstrapping.

## Running Locally

Make sure you have [Node.js](http://nodejs.org/) installed.

```sh
$ git clone git@github.com:launchdarkly/hello-bootstrap-ruby.git # or clone your own fork
$ cd hello-bootstrap-ruby
$ export LD_SDK_KEY=YOUR-SDK-KEY
$ export LD_CLIENTSIDE_ID=YOUR-CLIENTSIDE-ID
$ bundle install
$ bin/rails server
```

Your app should now be running on [localhost:3000](http://localhost:3000/).
