# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users do
    resources :containers do
      resources :categories do 
        resources :identifiers do
          resources :information
        end
      end
    end
  end
end

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html