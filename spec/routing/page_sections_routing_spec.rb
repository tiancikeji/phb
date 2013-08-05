require "spec_helper"

describe PageSectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/page_sections").should route_to("page_sections#index")
    end

    it "routes to #new" do
      get("/page_sections/new").should route_to("page_sections#new")
    end

    it "routes to #show" do
      get("/page_sections/1").should route_to("page_sections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/page_sections/1/edit").should route_to("page_sections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/page_sections").should route_to("page_sections#create")
    end

    it "routes to #update" do
      put("/page_sections/1").should route_to("page_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/page_sections/1").should route_to("page_sections#destroy", :id => "1")
    end

  end
end
