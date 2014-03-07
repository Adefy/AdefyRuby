#
# ruby-adefy/ruby-adefy.gemspec
#
lib = File.join(File.dirname(__FILE__), "lib")
$:.unshift lib unless $:.include?(lib)

require 'adefy/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "ruby-adefy"
  s.summary     = "Ruby API for the Adefy platform"
  s.description = %q"A ruby based wrapper around the Adefy API"
  s.date        = Time.now.to_date.to_s
  s.version     = Adefy::VERSION
  s.homepage    = %q{}
  s.license     = 'MIT'

  s.authors = ['Corey Powell']
  s.email  = %q{mistdragon100@gmail.com}

  s.add_runtime_dependency 'json', '~> 1.8'
  s.add_runtime_dependency 'excon', '~> 0.31'

  s.require_path = "lib"
  s.files = []
  s.files.concat(Dir.glob("lib/**/*"))
end