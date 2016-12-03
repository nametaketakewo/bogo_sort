# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bogo_sort/version'

Gem::Specification.new do |spec|
  spec.name          = "bogo_sort"
  spec.version       = BogoSort::VERSION
  spec.authors       = ["Harutaka Takeuchi"]
  spec.email         = ["nametaketakewo@icloud.com"]

  spec.summary       = %q{This gem add bogosort (that f*ckin' sort algorithm) to Array objects.}
  spec.description   = %q{
    You'll be able to use Array#bogosort (this is an alias for: Array#bogo_sort)
    And Array#bogosort! (this is an alias for: Array#bogo_sort!)
    But Array#bogo_sort can't sort Array include some Classes that can't compared
    At this time, Array#bogo_sort return nil
  }
  spec.homepage      = "https://github.com/nametaketakewo/bogo_sort"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
