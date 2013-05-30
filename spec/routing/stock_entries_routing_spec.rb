require "spec_helper"

describe StockEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/stock_entries").should route_to("stock_entries#index")
    end

    it "routes to #new" do
      get("/stock_entries/new").should route_to("stock_entries#new")
    end

    it "routes to #show" do
      get("/stock_entries/1").should route_to("stock_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stock_entries/1/edit").should route_to("stock_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stock_entries").should route_to("stock_entries#create")
    end

    it "routes to #update" do
      put("/stock_entries/1").should route_to("stock_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stock_entries/1").should route_to("stock_entries#destroy", :id => "1")
    end

  end
end
