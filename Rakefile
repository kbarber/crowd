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
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "crowd"
    gemspec.version = Crowd::Version::STRING
    gemspec.summary = "Ruby client for Atlassian Crowd"
    gemspec.description = "A client for Atlassian[http://www.atlassian.com] Crowd[http://www.atlassian.com/crowd] v2.0.3"
    gemspec.email = "post @nospam@ stefanwille.com"
    gemspec.homepage = "http://github.com/stefanwille/crowd"
    gemspec.authors = ["Stefan Wille", "Evgeny Zislis", "Jason Rimmer & Daniel Morrison"]
    gemspec.add_dependency('soap4r')
    gemspec.add_dependency('soap4r')
    gemspec.add_development_dependency('rspec')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end


# task :hoe do
#   Hoe.new('crowd', Crowd::Version::STRING) do |p|
#     p.rubyforge_name = 'crowd'
#     p.email = 'evgeny.zislis@gmail.com'
#     p.description = p.paragraphs_of('README.txt', 2..5).join("\n\n")
#     p.url = 'http://crowd.rubyforge.org'
#     p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
#     p.remote_rdoc_dir = ''
#     p.extra_deps << ['soap4r']
#   end
# end



# vim:syn=ruby
