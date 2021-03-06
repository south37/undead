# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "undead/version"

Gem::Specification.new do |spec|
  spec.name          = "undead"
  spec.version       = Undead::VERSION
  spec.authors       = ["Nao Minami"]
  spec.email         = ["south37777@gmail.com"]

  spec.summary       = %q{Undead gets Dynamic HTML. Dynamic HTML are created by JavaScript.}
  spec.homepage      = "https://github.com/south37/undead"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["undead"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "cliver",           "~> 0.3.1"
  spec.add_runtime_dependency "websocket-driver", ">= 0.2.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
