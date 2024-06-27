class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    listing_attributes = params.require(:listing).permit(:title, :description, :location, :price)
    @listing = Listing.new(listing_attributes)

    if @listing.valid?
      @listing.save
      redirect_to listings_path, notice: "Listing created successfully."
    else
      render "new"
    end

  end

  def index
    @listings = Listing.all.order(created_at: :desc)
    
  end

end
