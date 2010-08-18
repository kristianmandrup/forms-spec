require 'rspec'
require 'rspec/autorun'
require 'forms-spec'

RSpec.configure do |config|  
end

def fixtures_dir
  File.expand_path(File.dirname(__FILE__) + '/forms-spec/fixtures')
end

def erb_fixtures_dir
  File.join(fixtures_dir, 'erb')
end