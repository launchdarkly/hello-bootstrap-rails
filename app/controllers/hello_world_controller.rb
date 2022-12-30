# Set up the context properties. This context should appear on your LaunchDarkly contexts
# dashboard soon after you run the demo. Normal and bootstrapped flag values for
# this context should appear in your app.

class HelloWorldController < ApplicationController
  def index
    context = LaunchDarkly::LDContext.create({
      key: "example-user-key",
      kind: "user",
      name: "Sandy",
      groups: ["beta_testers"]
    })
    @context = context.as_json.to_json.html_safe
    @client_side_id = Rails.configuration.client_side_id
    @all_flags_state = (Rails.configuration.ld_client.all_flags_state(context, {client_side_only: true})).as_json.to_json.html_safe
  end
end
