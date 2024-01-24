Rails.application.routes.draw do

  namespace :api do
    get 'get_all_players', to: 'creator_roles#get_all_players'
    get 'get_all_games', to: 'creator_roles#get_all_games'
    get 'get_all_teams', to: 'creator_roles#get_all_teams'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
