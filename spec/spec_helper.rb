$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'spec'
require 'spec/autorun'
require 'rack/test'

begin
  require 'ruby-debug'
rescue LoadError
end

gem 'sinatra', '>= 1.0'
require 'sinatra/base'
require 'sinatra/bundles'

Spec::Runner.configure do |c|
  c.include Rack::Test::Methods
  c.include Sinatra::Bundles::Helpers
end
