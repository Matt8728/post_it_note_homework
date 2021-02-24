Rails.application.routes.draw do
  get 'notes/index'
  get 'notes/new'
  get 'notes/:id', to: 'notes#show'
  get 'notes/:id/edit', to: 'notes#edit'
  get 'notes/delete/:id', to: 'notes#delete'
  # resources :notes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
