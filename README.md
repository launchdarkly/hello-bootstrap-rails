# LaunchDarkly sample Rails application with bootstrapping

We've built a simple Rails app that demonstrates LaunchDarkly bootstrapping.

We modified and/or added the following files to create this example:
- app/views/hello_world/index.html.erb
- app/controllers/hello_world_controller.rb
- config/puma.rb

Rails created the rest of the files and they are unmodified.

Below, you'll find the build procedure. To learn more about the Ruby SDK, read the [Ruby SDK reference](https://docs.launchdarkly.com/sdk/server-side/ruby).

## Build instructions

Make sure you have Ruby installed. Then, clone the repository, set the `LD_SDK_KEY` and `LD_CLIENTSIDE_ID` environment variables, and start your local server. Here's how:

```sh
$ git clone git@github.com:launchdarkly/hello-bootstrap-rails.git # or clone your own fork
$ cd hello-bootstrap-rails
$ export LD_SDK_KEY=YOUR-SDK-KEY
$ export LD_CLIENTSIDE_ID=YOUR-CLIENTSIDE-ID
$ bundle install
$ bin/rails db:migrate
$ bin/rails server
```

Your app should now be running on [localhost:3000](http://localhost:3000/).

Your app should display a JSON representation of all flags in the project and environment associated with your SDK key and Client-side ID, with the values served for both the normal client and the bootstrapped client for the example user.
