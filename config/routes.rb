SoftwearDevise::Engine.routes.draw do
  devise_for :users, class_name: "SoftwearDevise::User"

  root to: "home#index"
end
