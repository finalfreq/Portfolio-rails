Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users, :only => [:show, :index]
  resources 'categories' do
    resources 'projects', except: :index
  end
end
