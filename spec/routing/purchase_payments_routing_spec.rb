require "spec_helper"

describe PurchasePaymentsController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_payments").should route_to("purchase_payments#index")
    end

    it "routes to #new" do
      get("/purchase_payments/new").should route_to("purchase_payments#new")
    end

    it "routes to #show" do
      get("/purchase_payments/1").should route_to("purchase_payments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_payments/1/edit").should route_to("purchase_payments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_payments").should route_to("purchase_payments#create")
    end

    it "routes to #update" do
      put("/purchase_payments/1").should route_to("purchase_payments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_payments/1").should route_to("purchase_payments#destroy", :id => "1")
    end

  end
end
