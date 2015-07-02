Rails.application.routes.draw do
  root 'admin#index', as: :admin, path: '/about',

  resources 'admin', only: :index
  resources 'categories' do
    resources 'projects'
  end
end
