require 'public_partial'

namespace :public_partial do
  desc "Precompile assets for public partial"
  task :precompile do
    require 'sprockets/rails/task'
    Sprockets::Rails::Task.new(Rails.application) do |t|
      Rails.application.config.assets.prefix = '/publicpartials'
    end
    Rake::Task['assets:precompile'].invoke

    assets = Dir.glob(File.join(Rails.root, 'public/publicpartials/**/*'))
    regex = /(-{1}[a-z0-9]{32}*\.{1}){1}/
    assets.each do |file|
      next if File.directory?(file) || file !~ regex

      source = file.split('/')
      source.push(source.pop.gsub(regex, '.'))

      non_digested = File.join(source)
      FileUtils.cp(file, non_digested)
    end
  end
end