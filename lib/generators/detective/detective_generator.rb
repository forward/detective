class DetectiveGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  argument :hoptoad_key, :type => :string, :optional => true
  argument :tripwire_key, :type => :string, :optional => true

  def generate_config
    template 'config.rb', 'config/detective.yml'
  end
end