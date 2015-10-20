Rails.application.routes.draw do
  resources :events, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :events, only: [:create], :defaults => { :format => 'json' }
    end
  end
end
