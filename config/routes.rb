Rails.application.routes.draw do
  devise_for :users

  root 'about#index'

  resources :about, :only => [:index]
  resources :users, :only => [:show, :index] do
    resources 'references', except: [:show, :index]
  end

  resources 'categories' do
    resources 'projects', except: :index
  end

  resources 'posts' do
    resources 'comments', except: :index
  end

end
