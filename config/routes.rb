Rails.application.routes.draw do
  get 'reports/index'

  get 'reports/update'

  get 'reports/destroy'

  get 'reports/edit'

  get 'reports/new'

  get 'registers/index'

  get 'registers/update'

  get 'registers/destroy'

  get 'registers/edit'

  get 'registers/new'

  get 'auth/login'

  get 'auth/signup'

  resources :rooms
  resources :lessons
  resources :positions
  resources :categories
  resources :ranks
  resources :devices

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
