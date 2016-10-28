Rails.application.routes.draw do
  resources :ranks

  resources :soldiers do 
    resources :promotions
  end
    
end
