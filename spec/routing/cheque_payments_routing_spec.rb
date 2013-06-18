require "spec_helper"

describe ChequePaymentsController do
  describe "routing" do

    it "routes to #index" do
      get("/cheque_payments").should route_to("cheque_payments#index")
    end

    it "routes to #new" do
      get("/cheque_payments/new").should route_to("cheque_payments#new")
    end

    it "routes to #show" do
      get("/cheque_payments/1").should route_to("cheque_payments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cheque_payments/1/edit").should route_to("cheque_payments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cheque_payments").should route_to("cheque_payments#create")
    end

    it "routes to #update" do
      put("/cheque_payments/1").should route_to("cheque_payments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cheque_payments/1").should route_to("cheque_payments#destroy", :id => "1")
    end

  end
end
