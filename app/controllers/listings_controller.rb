class ListingsController < ApplicationController



  def new
    @listing = Listing.new
  end

  def index
  end

  def create
    @listing = Listing.create(listing_params)
    if @listing.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:message)
  end


end
