class ConversionsController < ApplicationController
  def create
    conversion = Conversion.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      campaign_id: params[:campaign_id],
      referred_by: params[:referred_by],
    )
    if conversion.save
      render json: { message: "Conversion created successfully" }, status: :created
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
end
