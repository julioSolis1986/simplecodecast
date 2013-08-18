require "spec_helper"

describe GrupoMuscularesController do
  describe "routing" do

    it "routes to #index" do
      get("/grupo_musculares").should route_to("grupo_musculares#index")
    end

    it "routes to #new" do
      get("/grupo_musculares/new").should route_to("grupo_musculares#new")
    end

    it "routes to #show" do
      get("/grupo_musculares/1").should route_to("grupo_musculares#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grupo_musculares/1/edit").should route_to("grupo_musculares#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grupo_musculares").should route_to("grupo_musculares#create")
    end

    it "routes to #update" do
      put("/grupo_musculares/1").should route_to("grupo_musculares#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grupo_musculares/1").should route_to("grupo_musculares#destroy", :id => "1")
    end

  end
end
