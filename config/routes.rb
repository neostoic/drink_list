Rails.application.routes.draw do
  root "drinks#index"

  resources :drinks do
    collection do
      get :autocomplete
    end
  end

  resources :recipes,  except: [:index]
  resources :places,  except: [:index]
  resources :alcohols, except: [:index]
end
