require "spec_helper"

describe PcfListsController do
  describe "routing" do

    it "routes to #index" do
      get("/pcf_lists").should route_to("pcf_lists#index")
    end

    it "routes to #new" do
      get("/pcf_lists/new").should route_to("pcf_lists#new")
    end

    it "routes to #show" do
      get("/pcf_lists/1").should route_to("pcf_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pcf_lists/1/edit").should route_to("pcf_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pcf_lists").should route_to("pcf_lists#create")
    end

    it "routes to #update" do
      put("/pcf_lists/1").should route_to("pcf_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pcf_lists/1").should route_to("pcf_lists#destroy", :id => "1")
    end

  end
end
