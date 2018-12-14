Rails.application.routes.draw do
  
  resources :products do
    resources :reviews
  end

  get '/' => 'products#index2'

end
