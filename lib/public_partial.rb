module PublicPartial
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load "tasks/public_partial_tasks.rake"
    end
  end
end
