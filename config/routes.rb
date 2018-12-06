Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "event_campaigns#index"
  resources :event_campaigns
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :event_campaigns, only: [ :index, :show ]
    end
  end
end
