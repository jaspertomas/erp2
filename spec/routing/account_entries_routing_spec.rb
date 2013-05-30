require "spec_helper"

describe AccountEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/account_entries").should route_to("account_entries#index")
    end

    it "routes to #new" do
      get("/account_entries/new").should route_to("account_entries#new")
    end

    it "routes to #show" do
      get("/account_entries/1").should route_to("account_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/account_entries/1/edit").should route_to("account_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/account_entries").should route_to("account_entries#create")
    end

    it "routes to #update" do
      put("/account_entries/1").should route_to("account_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/account_entries/1").should route_to("account_entries#destroy", :id => "1")
    end

  end
end
