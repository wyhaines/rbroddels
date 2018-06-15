
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rbroddels/version"

Gem::Specification.new do |spec|
  spec.name          = "rbroddels"
  spec.version       = Rbroddels::VERSION
  spec.authors       = ["Kirk Haines"]
  spec.email         = ["wyhaines@gmail.com"]

  spec.summary       = %q{This is a library that bundles a gossip protocol implementation.}
  spec.description   = %q{Gossip protocols allow networked software to exchange information in a CPU and network efficient manner by emulating how information is spread in a social network. A cluster will eventually converge on a consistent state, but individual messages and updates are not guaranteed to arrive in a predictable order or within a specific time frame.}
  spec.homepage      = "https://github.com/wyhaines/rbroddels"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
