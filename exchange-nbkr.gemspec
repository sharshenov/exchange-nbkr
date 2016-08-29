# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exchange/nbkr/version'

Gem::Specification.new do |spec|
  spec.name          = "exchange-nbkr"
  spec.version       = Exchange::Nbkr::VERSION
  spec.authors       = ["Rustam Sharshenov"]
  spec.email         = ["rustam@sharshenov.com"]

  spec.summary       = "National Bank of Kyrgyzstan API adapter for exchange gem"
  spec.description   = "National Bank of Kyrgyzstan API adapter for exchange gem"
  spec.homepage      = "https://github.com/sharshenov/exchange-nbkr"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "exchange"

  spec.add_development_dependency "bundler", "~> 1.10"
end
