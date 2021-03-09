# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/cookies/version"

Gem::Specification.new do |s|
  s.version = Decidim::Cookies.version
  s.authors = ["quentinchampenois"]
  s.email = ["quentin.champenois7@gmail.com"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/decidim/decidim-module-cookies"
  s.required_ruby_version = ">= 2.5"

  s.name = "decidim-cookies"
  s.summary = "A decidim cookies module"
  s.description = "Cookies banner using Orejime."

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core", "~> #{Decidim::Cookies.version}"
end
