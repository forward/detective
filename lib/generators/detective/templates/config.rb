hoptoad:
  enabled: <%= hoptoad_key.present? ? 'true' : 'false' %>
  api_key: '<%= hoptoad_key %>'

tripwire:
  enabled: <%= tripwire_key.present? ? 'true' : 'false' %>
  api_key: '<%= tripwire_key %>'

newrelic_rpm:
  enabled: true

monitoring:
  enabled: true