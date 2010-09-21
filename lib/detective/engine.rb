require 'rails'
require 'hoptoad_notifier'
require 'newrelic_rpm'

module Detective
  class Engine < Rails::Engine
    initializer 'detective.load', :after => :load_config_initializers do |app|
      # Load config
      if File.exist?("#{Rails.root}/config/detective.yml")
        CONFIG = YAML.load_file("#{Rails.root}/config/detective.yml").with_indifferent_access
      else
        puts 'No config detected, install with: rails g detective'
      end

      if defined? Detective::Engine::CONFIG
        # Hoptopad
        if Detective::Engine::CONFIG[:hoptoad][:enabled]
          HoptoadNotifier.configure do |config|
            config.api_key = Detective::Engine::CONFIG[:hoptoad][:api_key]
            config.logger = nil
            config.js_notifier = true
            config.secure = true
          end
        end

        # Tripwire
        if Detective::Engine::CONFIG[:tripwire][:enabled]
          require 'tripwire_notifier'
          TripwireNotifier.configure do |config|
            config.api_key = Detective::Engine::CONFIG[:tripwire][:api_key]
            config.monitored_environments << 'development'
          end
        end
      end
    end
  end
end