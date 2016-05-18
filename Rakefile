require 'sass'

namespace :assets do
  desc 'Compile application assets'
  task :precompile do
    time_start = Time.now
    FileUtils.mkdir_p 'assets/stylesheets' unless Dir.exists? 'assets/stylesheets'
    FileUtils.mkdir_p 'assets/javascripts' unless Dir.exists? 'assets/javascripts'
    FileUtils.mkdir_p 'assets/fonts' unless Dir.exists? 'assets/fonts'
    FileUtils.mkdir_p '_site/assets/stylesheets' unless Dir.exists? '_site/assets/stylesheets'
    FileUtils.mkdir_p '_site/assets/javascripts' unless Dir.exists? '_site/assets/javascripts'

    puts "> sass compile application.scss"
    Sass.compile_file(
      '_assets/stylesheets/application.scss',
      'assets/stylesheets/application.css',
      load_paths: ['_assets/bower'],
    )
    FileUtils.cp 'assets/stylesheets/application.css', '_site/assets/stylesheets/application.css'

    puts "> copy javascripts"
    FileUtils.cp '_assets/bower/bootstrap-sass/assets/javascripts/bootstrap.min.js', 'assets/javascripts/bootstrap.min.js'
    FileUtils.cp '_assets/bower/jquery/dist/jquery.min.js', 'assets/javascripts/jquery.min.js'

    puts "> install fonts"
    FileUtils.cp Dir.glob('_assets/bower/fontawesome/fonts/*'), 'assets/fonts/'

    puts "> complete: #{(Time.now - time_start).round 2}s"
  end
end
