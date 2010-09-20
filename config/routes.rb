Rails.application.routes.draw do
  if  Detective::Engine::CONFIG[:monitoring][:enabled]
    match '/monitoring' => 'monitoring#index', :as => :monitoring
    match '/status' => 'monitoring#index', :as => :status
  end
end