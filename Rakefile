# -*- ruby -*-

require 'rubygems'
require 'rake'
require 'jeweler'
require './lib/crowd/version'


# Install the gem locally via 'rake install'.

task :default => :test

task :test do
  system("spec spec/crowd_spec.rb")
end

task :wsdl2ruby do
  system("cd lib/crowd/soap/ && wsdl2ruby.rb --force --wsdl http://localhost:8095/crowd/services/SecurityServer?wsdl --type client")
  system("cp lib/crowd/soap/defaultMappingRegistry.rb lib/crowd/soap/mapping_registry.rb")
  system("rm lib/crowd/soap/defaultMappingRegistry.rb")
  system("cp lib/crowd/soap/defaultDriver.rb lib/crowd/soap/driver.rb")
  system("rm lib/crowd/soap/defaultDriver.rb")
  puts "You will need to modify some 'require' statements in the generated sources manually to load files from the right location."
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "crowd-stefanwille"
    gemspec.version = Crowd::Version::STRING
    gemspec.summary = "Ruby client for Atlassian Crowd 2.0"
    gemspec.description = "A client for Atlassian[http://www.atlassian.com] Crowd[http://www.atlassian.com/crowd] v2.0. Tested with Crowd 2.0.2 and 2.0.5."
    gemspec.email = "post @nospam@ stefanwille.com"
    gemspec.homepage = "http://github.com/stefanwille/crowd"
    gemspec.authors = ["Stefan Wille", "Evgeny Zislis", "Jason Rimmer & Daniel Morrison"]
    gemspec.add_dependency('soap4r')
    gemspec.add_development_dependency('rspec')
    # Silence a warning about missing rubyforge_project
    gemspec.rubyforge_project = "nowarning"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end


# vim:syn=ruby
