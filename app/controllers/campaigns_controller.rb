class CampaignsController < ApplicationController
  before_action :authenticate_user

  def index
    campaigns = current_user.campaigns
    render json: campaigns
  end

  def show
    if current_user.id == Campaign.find(params[:id]).user_id
      campaign = current_user.campaigns.find(params[:id])
      render json: campaign
    else
      render json: {}, status: 401
    end
  end

  def create
    campaign = Campaign.new(user_id: current_user.id,
                            name: params[:name],
                            company: params[:company])
    if campaign.save
      render json: { message: "Success!", newCampaign: campaign }
    else
      render json: { errors: campaign.errors.full_messages }
    end
  end
end
