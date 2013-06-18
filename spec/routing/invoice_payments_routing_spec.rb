require "spec_helper"

describe InvoicePaymentsController do
  describe "routing" do

    it "routes to #index" do
      get("/invoice_payments").should route_to("invoice_payments#index")
    end

    it "routes to #new" do
      get("/invoice_payments/new").should route_to("invoice_payments#new")
    end

    it "routes to #show" do
      get("/invoice_payments/1").should route_to("invoice_payments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/invoice_payments/1/edit").should route_to("invoice_payments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/invoice_payments").should route_to("invoice_payments#create")
    end

    it "routes to #update" do
      put("/invoice_payments/1").should route_to("invoice_payments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/invoice_payments/1").should route_to("invoice_payments#destroy", :id => "1")
    end

  end
end
