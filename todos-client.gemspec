# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todos_client/version'

Gem::Specification.new do |spec|
  spec.name          = "todos-client"
  spec.version       = TodosClient::VERSION
  spec.authors       = ["Marcin Nowakowski"]
  spec.email         = ["game.of.no@gmail.com"]

  spec.summary       = %q{Todos REST API command line client}
  spec.description   = %q{CLI application showing how to implement REST client with http party library.}
  spec.homepage      = "https://github.com/marcinnowakowski/todos-ruby-cln-rest-client"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["todos_client"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
