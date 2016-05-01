Rails.application.routes.draw do
  resources :tags, except: [:new, :edit]
  resources :versions, except: [:new, :edit]
  resources :sections, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :documents, except: [:new, :edit]
end
