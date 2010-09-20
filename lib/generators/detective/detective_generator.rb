require 'new_relic/command'

class DetectiveGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  argument :hoptoad_key, :type => :string, :optional => true
  argument :newrelic_key, :type => :string, :optional => true
  argument :tripwire_key, :type => :string, :optional => true

  def generate_config
    template 'config.rb', 'config/detective.yml'
    if newrelic_key.present?
      NewRelic::Command::Install.new(:quiet => true, :app_name => Rails.application.class.parent, :license_key => newrelic_key).run
    end
  end
end