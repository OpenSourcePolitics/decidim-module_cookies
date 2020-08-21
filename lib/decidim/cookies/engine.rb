# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module Cookies
    # This is the engine that runs on the public interface of cookies.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::Cookies

      routes do
        # Add engine routes here
        # resources :cookies
        # root to: "cookies#index"
      end

      initializer "decidim_cookies.assets" do |app|
        app.config.assets.precompile += %w(decidim_cookies_manifest.js decidim_cookies_manifest.css)
      end

      # Example: Add cookies to the banner
      #
      # initializer "decidim_cookies.cookies" do |app|
      # app.config.cookies = [
      #  {
      #     name: "matomo",
      #     title: "Matomo",
      #     cookies: %w(matomo_session pk_id pk_ses _pk_ref _pk_cvar),
      #     purposes: %w(tracking analytics)
      # }
      # ]
      # end
    end
  end
end
