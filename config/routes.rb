Rails.application.routes.draw do
  get 'group_shops/new'
  get 'group_shops/create'
  devise_for :users

  resources :groups
  resources :group_shops
  resources :shops

  authenticated :user do
    root to: 'groups#index'
  end

  devise_scope :user do
    root to: 'devise/sessions#splash', as: :splash_root
  end

  get '/older_groups' => 'groups#older_index'
end
