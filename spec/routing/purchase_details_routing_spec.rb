require "spec_helper"

describe PurchaseDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_details").should route_to("purchase_details#index")
    end

    it "routes to #new" do
      get("/purchase_details/new").should route_to("purchase_details#new")
    end

    it "routes to #show" do
      get("/purchase_details/1").should route_to("purchase_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_details/1/edit").should route_to("purchase_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_details").should route_to("purchase_details#create")
    end

    it "routes to #update" do
      put("/purchase_details/1").should route_to("purchase_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_details/1").should route_to("purchase_details#destroy", :id => "1")
    end

  end
end
