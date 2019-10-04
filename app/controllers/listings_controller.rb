class ListingsController < ApplicationController



  def new
    @listing = Listing.new
  end

  def index
  end

  def create
    @listing = Listing.create(listing_params)
    redirect_to root_path
  end

  private

  def listing_params
    params.require(:listing).permit(:message)
  end


end
