class MonitoringController < ActionController::Base
  def index
    render(:text => "ok", :content_type => 'text/plain') 
  end
end