class CampaignsController < ApplicationController
  before_action :authenticate_user

  def index
    campaigns = current_user.campaigns
    render json: campaigns
  end

  def show
  end

  def create
  end
end
