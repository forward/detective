Rails.application.routes.draw do
  match '/monitoring' => 'monitoring#index', :as => :monitoring
  match '/status' => 'monitoring#index', :as => :status
end