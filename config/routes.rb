Rails.application.routes.draw do
  root                   "users#index"
  post   "users"      => "users#create",  as: :users
  delete "users/:id"  => "users#destroy", as: :user
end
