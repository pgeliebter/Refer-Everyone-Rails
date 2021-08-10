class ConversionsController < ApplicationController
  def create
    conversion = Conversion.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      campaign_id: params[:campaign_id],
      referred_by: (params[:referred_by].blank? ? nil : Conversion.find(params[:referred_by])),
    )
    if conversion.save
      render json: { message: "Conversion created successfully", conversionId: conversion.id }, status: :created
    else
      render json: { errors: conversion.errors.full_messages }, status: 422
    end
  end

  def show
    conversion = Conversion.find(params[:id])
    render json: conversion
  rescue
    render json: {}, status: 422
  end

  def validate_campaign
    if Campaign.find(params[:campaign_id])
      campaign = Campaign.find(params[:campaign_id])
      render json: { exist: true, campaign: { name: campaign.name, company: campaign.company } }
    end
  rescue
    render json: { exist: false }
  end
end
