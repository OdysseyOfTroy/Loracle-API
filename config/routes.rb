# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: :sessions, registrations: :registrations },
                        path_names: { sign_in: :login, sign_out: :logout }
  resources :users, defaults: { format: :json } do
    resources :containers, defaults: { format: :json } do
      resources :categories, defaults: { format: :json } do 
        resources :identifiers, defaults: { format: :json } do
          resources :information, defaults: { format: :json }
        end
      end
    end
  end
end

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html