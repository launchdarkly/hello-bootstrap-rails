# Set up the user properties. This user should appear on your LaunchDarkly users
# dashboard soon after you run the demo. Normal and bootstrapped flag values for
# this user should appear in your app.

class HelloWorldController < ApplicationController
  def index
      user = {
        key: "example-user-key",
        firstName: "Sandy",
        lastName: "Sands",
        custom: {
          groups: "beta_testers"
        }
      }
      @user = user.to_json.html_safe
      @client_side_id = Rails.configuration.client_side_id
      @all_flags_state = (Rails.configuration.ld_client.all_flags_state(user, {client_side_only: true})).as_json.to_json.html_safe
  end
end
