
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mkswapfile/version"

Gem::Specification.new do |spec|
  spec.name          = "mkswapfile"
  spec.version       = Mkswapfile::VERSION
  spec.authors       = ["s3fxn"]
  spec.email         = ["sssfxn@gmail.com"]

  spec.summary       = %q{mkswapfile - make and enable a swap file easily.}
  spec.homepage      = "https://github.com/s3fxn/mkswapfile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
