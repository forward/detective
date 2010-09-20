require 'rails'
require 'hoptoad_notifier'
require 'newrelic_rpm'
require 'tripwire_notifier'

module Detective
  class Engine < Rails::Engine
    initializer 'detective.load', :after => :load_config_initializers do |app|

      # Hoptopad
      HoptoadNotifier.configure do |config|
        config.api_key = '1c04ecd48ef46dc905146610b10da466'
        config.logger = nil
        config.js_notifier = true
        config.secure = true
      end

      # Tripwire
      TripwireNotifier.configure do |config|
        config.api_key = 'ccf390569e1ec913b9e38f67919029d5'
      end
    end
  end
end