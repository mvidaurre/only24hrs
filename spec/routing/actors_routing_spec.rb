require "spec_helper"

describe ActorsController do
  describe "routing" do

    it "routes to #index" do
      get("/actors").should route_to("actors#index")
    end

    it "routes to #new" do
      get("/actors/new").should route_to("actors#new")
    end

    it "routes to #show" do
      get("/actors/1").should route_to("actors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/actors/1/edit").should route_to("actors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/actors").should route_to("actors#create")
    end

    it "routes to #update" do
      put("/actors/1").should route_to("actors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/actors/1").should route_to("actors#destroy", :id => "1")
    end

  end
end
