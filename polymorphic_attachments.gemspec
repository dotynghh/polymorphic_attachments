# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polymorphic_attachments/version'

p 'spec file'
Gem::Specification.new do |spec|
  spec.name          = "polymorphic_attachments"
  spec.version       = PolymorphicAttachments::VERSION
  spec.authors       = ["yangkunlun"]
  spec.email         = ["kunlundev@gmail.com"]

  spec.summary       = %q{polymorphic attachments}
  spec.description   = %q{polymorphic attachments description}
  spec.homepage      = "http://nandudu.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "polymorphic attachments"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir['lib/   *.rb'] + Dir['bin/*']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

p 'gem dependency file'
  spec.add_dependency "bundler"
  spec.add_dependency "rake"
  spec.add_dependency 'simple_form', "~> 3.2.1"
  spec.add_dependency 'carrierwave', "~> 0.10"
  spec.add_dependency 'mini_magick'
  spec.add_dependency 'jquery-fileupload-rails'
  spec.add_dependency "rspec", "~> 3.2"

  # spec.add_development_dependency "cucumber"
  # spec.add_development_dependency "aruba"
end

