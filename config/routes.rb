Rails.application.routes.draw do
  devise_for :users

  resources :groups
  resources :group_expenses
  resources :expenses

  authenticated :user do
    root to: 'groups#index'
  end

  devise_scope :user do
    root to: 'devise/sessions#splash', as: :splash_root
  end

  get '/older_groups' => 'groups#older_index'
end
