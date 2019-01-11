require 'ldclient-rb'

%w[
  .ruby-version
  .rbenv-vars
  tmp/restart.txt
  tmp/caching-dev.txt
].each { |path| Spring.watch(path) }

Spring.after_fork do
  Rails.configuration.ld_client = LaunchDarkly::LDClient.new('SDK KEY')
end