Rails.application.routes.draw do

  resources :users

  root to: "home#index"

  mount SoftwearDevise::Engine => "/softwear_devise"
end
