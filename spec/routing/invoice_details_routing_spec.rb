require "spec_helper"

describe InvoiceDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/invoice_details").should route_to("invoice_details#index")
    end

    it "routes to #new" do
      get("/invoice_details/new").should route_to("invoice_details#new")
    end

    it "routes to #show" do
      get("/invoice_details/1").should route_to("invoice_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/invoice_details/1/edit").should route_to("invoice_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/invoice_details").should route_to("invoice_details#create")
    end

    it "routes to #update" do
      put("/invoice_details/1").should route_to("invoice_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/invoice_details/1").should route_to("invoice_details#destroy", :id => "1")
    end

  end
end
