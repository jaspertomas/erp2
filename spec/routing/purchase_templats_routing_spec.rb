require "spec_helper"

describe PurchaseTemplatsController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_templats").should route_to("purchase_templats#index")
    end

    it "routes to #new" do
      get("/purchase_templats/new").should route_to("purchase_templats#new")
    end

    it "routes to #show" do
      get("/purchase_templats/1").should route_to("purchase_templats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_templats/1/edit").should route_to("purchase_templats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_templats").should route_to("purchase_templats#create")
    end

    it "routes to #update" do
      put("/purchase_templats/1").should route_to("purchase_templats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_templats/1").should route_to("purchase_templats#destroy", :id => "1")
    end

  end
end
