InductionCannon01::Application.routes.draw do
  resources :blogs

  resources :users do
    collection do
      put :update_all
    end
  end







end
