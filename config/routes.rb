Rails.application.routes.draw do
  root to: 'sales#index'
  resources :sales, only:[:index,:import_data,:create] do 
    collection do 
     get :import_data
    end
  end
end
