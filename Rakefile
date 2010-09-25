begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "forms-spec"
    gem.summary = %Q{Assists in verifying your static web forms code structure}
    gem.description = %Q{Adds RSpec 2 matchers to make expectations about your view code containing form logic}
    gem.email = "kmandrup@gmail.com"
    gem.homepage = "http://github.com/kristianmandrup/forms-spec"
    gem.authors = ["Kristian Mandrup"]
    gem.add_development_dependency  "rspec",        "~> 2.0.0.beta.22"
    gem.add_dependency              "require_all",  "~> 1.2.0"    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
