require "spec_helper"

describe FocusesController do
  describe "routing" do

    it "routes to #index" do
      get("/focuses").should route_to("focuses#index")
    end

    it "routes to #new" do
      get("/focuses/new").should route_to("focuses#new")
    end

    it "routes to #show" do
      get("/focuses/1").should route_to("focuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/focuses/1/edit").should route_to("focuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/focuses").should route_to("focuses#create")
    end

    it "routes to #update" do
      put("/focuses/1").should route_to("focuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/focuses/1").should route_to("focuses#destroy", :id => "1")
    end

  end
end
