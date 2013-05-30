require "spec_helper"

describe PurchaseTemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_templates").should route_to("purchase_templates#index")
    end

    it "routes to #new" do
      get("/purchase_templates/new").should route_to("purchase_templates#new")
    end

    it "routes to #show" do
      get("/purchase_templates/1").should route_to("purchase_templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_templates/1/edit").should route_to("purchase_templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_templates").should route_to("purchase_templates#create")
    end

    it "routes to #update" do
      put("/purchase_templates/1").should route_to("purchase_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_templates/1").should route_to("purchase_templates#destroy", :id => "1")
    end

  end
end
