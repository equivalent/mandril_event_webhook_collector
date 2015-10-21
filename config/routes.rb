Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events, only: [:create], :defaults => { :format => 'json' }
    end
  end

  root 'events#index'
end
