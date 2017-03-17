Rails.application.routes.draw do
  resources :videos, except: [:new, :edit]
  resources :blogs, except: [:new, :edit]
  resources :profiles, except: [:new]
  resources :contacts, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
