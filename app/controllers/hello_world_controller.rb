class HelloWorldController < ApplicationController
  def index
      user = {
        key: "bob@example.com",
        firstName: "Bob",
        lastName: "Loblaw",
        custom: {
          groups: "beta_testers"
        }
      }
      @user = user.to_json.html_safe
      @client_side_id = Rails.configuration.client_side_id
      @all_flags_state = (Rails.configuration.ld_client.all_flags_state(user, {client_side_only: true})).as_json.to_json.html_safe
  end
end
