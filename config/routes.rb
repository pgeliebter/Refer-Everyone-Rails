Rails.application.routes.draw do
  post "users" => "users#create"
  post "sessions" => "sessions#create"

  get "campaigns" => "campaigns#index"
  get "campaigns/:id" => "campaigns#show"
  post "campaigns" => "campaigns#create"

  get "conversions/:id" => "conversion#show"
  post "conversions" => "conversion#create"
end
