Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/contact'

  get 'pages/resources'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'categories/index'

  get 'categories/edit'

  get 'categories/view'

  get 'categories/show'

  get 'home/index'

    resources:posts
    resources:categories

    get '/about', :to => 'pages#about'
    get '/contact', :to => 'pages#contact'
    get '/resources', :to => 'pages#resources'
    #match '/about', :to => 'pages#about'
    #match '/contact', :to => 'pages#contact'
    #match '/resources', :to => 'pages#resources'

  root 'home#index' # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
