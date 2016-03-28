Rails.application.routes.draw do
  root "drinks#index"

  resources :drinks

  resources :recipes,  except: [:index]
  resources :places,  except: [:index]
  resources :alcohols, except: [:index]
end
