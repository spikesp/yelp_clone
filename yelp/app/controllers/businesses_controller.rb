class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      redirect_to :home
    else
      render :home
    end
  end

  private
  def business_params
    params.require(:business).permit(:title, :description, :url)
  end
end