# coding: utf-8
lib = File.expand_path('../lib/iscroll/rails/version', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iscroll/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "iscroll-rails"
  spec.version       = Iscroll::Rails::VERSION
  spec.authors       = ["xukuanzhuo"]
  spec.email         = ["1060821554@qq.com"]

  spec.summary       = %q{"iscroll-rails gem"}
  spec.description   = %q{"This gem provides iScroll for your Rails application."}
  spec.homepage      = "https://github.com/xukuanzhuo/iscroll-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
