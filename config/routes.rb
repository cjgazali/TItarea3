Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/:id', to: 'movies#show', as: 'movie'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'movies#index'
end
