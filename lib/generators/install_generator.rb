require "rails"
module PublicPartial
  class InstallGenerator < Rails::Generators::Base
    def create_initial_file
      create_file "app/controllers/public_partials_controller.rb", "# Add public partial controller"
    end
  end
end
