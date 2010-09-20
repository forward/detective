Rails.application.routes.draw do
  if defined?( Detective::Engine::CONFIG) && Detective::Engine::CONFIG[:monitoring][:enabled]
    match '/monitoring' => 'monitoring#index', :as => :monitoring
    match '/status' => 'monitoring#index', :as => :status
  end
end