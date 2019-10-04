require 'rails_helper'

RSpec.describe ListingsController, type: :controller do

  describe "listings#index action" do 

    it "should successfully show the page" do 
      get :index
      expect(response).to have_http_status(:success)
    end

  end

  describe "listings#new action" do
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "listings#create action" do

    it "should successfully create a new listing in our database" do
      post :create, params: { listing: { message: 'Hello!'} }
      expect(response).to redirect_to root_path

      listing = Listing.last
      expect(listing.message).to eq("Hello!")

    end

  end


end
