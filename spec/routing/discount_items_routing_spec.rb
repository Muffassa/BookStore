require "rails_helper"

RSpec.describe DiscountItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/discount_items").to route_to("discount_items#index")
    end

    it "routes to #new" do
      expect(:get => "/discount_items/new").to route_to("discount_items#new")
    end

    it "routes to #show" do
      expect(:get => "/discount_items/1").to route_to("discount_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/discount_items/1/edit").to route_to("discount_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/discount_items").to route_to("discount_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/discount_items/1").to route_to("discount_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/discount_items/1").to route_to("discount_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/discount_items/1").to route_to("discount_items#destroy", :id => "1")
    end

  end
end
