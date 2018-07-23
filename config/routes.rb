Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/edit'

  get 'categories/view'

  get 'categories/show'

  get 'home/index'

    resources:posts
    resources:categories

  root 'home#index' # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
