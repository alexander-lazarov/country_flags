$:.push File.expand_path('../lib', __FILE__)
require 'country_flags/version'

Gem::Specification.new do |s|
  s.name = 'country_flags'
  s.version = CountryFlags::VERSION
  s.authors = ['Alexander Lazarov']
  s.description = 'Gemified collection of country flags. See homepage for details: https://github.com/alexander-lazarov/country_flags'
  s.email = 'alexander.lazaroff@gmail.com'
  s.extra_rdoc_files = [ 'LICENSE' ]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")

  s.homepage = 'https://github.com/alexander-lazarov/country_flags'
  s.require_paths = %w(lib)
  s.summary = 'Gemified collection of country flags.'

  s.license = 'MIT'

  s.add_development_dependency('rspec', '>= 2.11')
  s.add_dependency 'railties', '>= 3.1'
  s.add_dependency 'actionview', '>= 3.1'
  s.add_dependency 'normalize_country', '>= 0.1'
end
