require "spec_helper"

describe SubsidiariesController do
  describe "routing" do

    it "routes to #index" do
      get("/subsidiaries").should route_to("subsidiaries#index")
    end

    it "routes to #new" do
      get("/subsidiaries/new").should route_to("subsidiaries#new")
    end

    it "routes to #show" do
      get("/subsidiaries/1").should route_to("subsidiaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/subsidiaries/1/edit").should route_to("subsidiaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/subsidiaries").should route_to("subsidiaries#create")
    end

    it "routes to #update" do
      put("/subsidiaries/1").should route_to("subsidiaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/subsidiaries/1").should route_to("subsidiaries#destroy", :id => "1")
    end

  end
end
