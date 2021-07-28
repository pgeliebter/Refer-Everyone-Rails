Rails.application.routes.draw do
  post "users" => "users#create"
  post "sessions" => "sessions#create"

  get "campaigns" => "campaigns#index"
  get "campaings/:id" => "campaigns#show"
  post "campaigns" => "campaigns#create"
end
