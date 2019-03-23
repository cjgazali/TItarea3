Rails.application.routes.draw do
  get 'search', to: 'search#show', as: 'search'
  get 'starships/:id', to: 'starships#show', as: 'starship'
  get 'planets/:id', to: 'planets#show', as: 'planet'
  get 'characters/:id', to: 'characters#show', as: 'character'
  get 'movies/index'
  get 'movies/:id', to: 'movies#show', as: 'movie'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'movies#index'
end
