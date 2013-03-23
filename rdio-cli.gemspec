# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','rdio','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'rdio-cli'
  s.version = Rdio::VERSION
  s.author = 'Wynn Netherland'
  s.email = 'wynn.netherland@gmail.com'
  s.homepage = 'http://wynnnetherland.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'CLI for Rdio for Mac'
  s.files = %w(CONTRIBUTING.md LICENSE.md README.md Rakefile rdio-cli.gemspec)
  s.files += Dir.glob("lib/**/*.rb")
  s.files += Dir.glob("bin/**/*")
  s.files += Dir.glob("etc/**/*")
  s.require_paths << 'lib'
  s.has_rdoc = false
  s.rdoc_options << '--title' << 'rdio' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'rdio'
  s.add_dependency('highline', '~> 1.6.15')
  s.add_dependency('launchy', '~> 2.1.2')
  s.add_runtime_dependency('gli','2.5.2')
end
