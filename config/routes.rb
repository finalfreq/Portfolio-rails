Rails.application.routes.draw do
  root 'admin#index'
  resources :admin, as: :admin, path: '/about', only: :index
  resources 'categories' do
    resources 'projects'
  end
end
