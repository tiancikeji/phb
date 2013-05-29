require "spec_helper"

describe BabycardsController do
  describe "routing" do

    it "routes to #index" do
      get("/babycards").should route_to("babycards#index")
    end

    it "routes to #new" do
      get("/babycards/new").should route_to("babycards#new")
    end

    it "routes to #show" do
      get("/babycards/1").should route_to("babycards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/babycards/1/edit").should route_to("babycards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/babycards").should route_to("babycards#create")
    end

    it "routes to #update" do
      put("/babycards/1").should route_to("babycards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/babycards/1").should route_to("babycards#destroy", :id => "1")
    end

  end
end
