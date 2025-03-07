# frozen_string_literal: true

Rails.configuration.client_side_id = ENV['LD_CLIENTSIDE_ID']
Rails.configuration.ld_client = LaunchDarkly::LDClient.new(ENV['LD_SDK_KEY'])
