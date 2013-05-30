require "spec_helper"

describe PricelistsController do
  describe "routing" do

    it "routes to #index" do
      get("/pricelists").should route_to("pricelists#index")
    end

    it "routes to #new" do
      get("/pricelists/new").should route_to("pricelists#new")
    end

    it "routes to #show" do
      get("/pricelists/1").should route_to("pricelists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pricelists/1/edit").should route_to("pricelists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pricelists").should route_to("pricelists#create")
    end

    it "routes to #update" do
      put("/pricelists/1").should route_to("pricelists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pricelists/1").should route_to("pricelists#destroy", :id => "1")
    end

  end
end
