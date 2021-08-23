Rails.application.routes.draw do
  post "users" => "users#create"
  post "sessions" => "sessions#create"

  get "campaigns" => "campaigns#index"
  get "campaigns/:id" => "campaigns#show"
  post "campaigns" => "campaigns#create"

  get "conversions/lookup" => "conversions#lookup"
  get "conversions/:id" => "conversions#show"
  post "conversions" => "conversions#create"

  get "campaign/:campaign_id/" => "conversions#validate_campaign"
end
