Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :documents, except: [:new, :edit]
  resources :sections, except: [:new, :edit]
  resources :versions, except: [:new, :edit]
  resources :tags, except: [:new, :edit, :update]
end
