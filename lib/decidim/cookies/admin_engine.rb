# frozen_string_literal: true

module Decidim
  module Cookies
    # This is the engine that runs on the public interface of `Cookies`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::Cookies::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :cookies do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "cookies#index"
      end

      def load_seed
        nil
      end
    end
  end
end
