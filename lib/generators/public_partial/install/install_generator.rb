require "rails"

module PublicPartial
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def create_initial_file
      public_partial_controller     = "app/controllers/public_partials_controller.rb"
      public_partial_view_directory = "app/views/public_partials"
      copy_file public_partial_controller, public_partial_controller
      directory public_partial_view_directory, public_partial_view_directory
    end

    def add_routing_for_public_partial
      route "get 'publicpartials/*path', to: 'public_partials#show'"
    end
  end
end
