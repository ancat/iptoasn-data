# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name = 'iptoasn-data'
  s.version = '1.2025.4'
  s.authors = ['OMAR']
  s.summary = 'The IP to ASN dataset wrapped in a Ruby gem'
  s.description = "This gem wraps the IP to ASN dataset."
  s.license = 'MIT'
  s.homepage = 'https://github.com/ancat/iptoasn-data'

  s.files = Dir['README.md', 'lib/**/*']
  s.add_runtime_dependency 'iptoasn', '~> 1'

  s.required_ruby_version = '>= 3.0'
end
