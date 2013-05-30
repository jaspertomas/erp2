require "spec_helper"

describe InvoiceTemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/invoice_templates").should route_to("invoice_templates#index")
    end

    it "routes to #new" do
      get("/invoice_templates/new").should route_to("invoice_templates#new")
    end

    it "routes to #show" do
      get("/invoice_templates/1").should route_to("invoice_templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/invoice_templates/1/edit").should route_to("invoice_templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/invoice_templates").should route_to("invoice_templates#create")
    end

    it "routes to #update" do
      put("/invoice_templates/1").should route_to("invoice_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/invoice_templates/1").should route_to("invoice_templates#destroy", :id => "1")
    end

  end
end
