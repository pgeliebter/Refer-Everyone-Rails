class CampaignsController < ApplicationController
  before_action :authenticate_user

  def index
    campaigns = current_user.campaigns
    render json: campaigns
  end

  def show
    campaign = current_user.campaigns.find(params[:id])
    render json: campaign
    # rescue allows us to return value if the above doesn't work for any reason (like if we can't find the campaign for that user.)
  rescue
    render json: {}, status: 401
  end

  def create
    campaign = Campaign.new(user_id: current_user.id,
                            name: params[:name],
                            company: params[:company])
    if campaign.save
      render json: { message: "Success!", newCampaign: campaign }
    else
      render json: { errors: campaign.errors }, status: 422
    end
  end
end
