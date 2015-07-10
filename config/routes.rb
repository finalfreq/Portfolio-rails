Rails.application.routes.draw do
  devise_for :users
  root 'about#index'
  resources :about, :only => [:index]
  resources :users, :only => [:show, :index]
  resources 'categories' do
    resources 'projects', except: :index
  end
end
