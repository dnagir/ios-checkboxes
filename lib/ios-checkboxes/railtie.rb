require 'sass-rails'

module IosCheckboxes
  class Railtie < ::Rails::Railtie
    initializer :ios_checkboxes, :after => :setup_sass do |app|
      config.sass.load_paths << File.join(::IosCheckboxes::Engine.root, 'lib', 'assets', 'stylesheets')
    end
  end
end
