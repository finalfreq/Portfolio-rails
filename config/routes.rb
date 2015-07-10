Rails.application.routes.draw do
  devise_for :users
  root 'admin#index'
  resources :admin, as: :admin, path: '/about', only: :index
  resources 'categories' do
    resources 'projects', except: :index
  end
end
