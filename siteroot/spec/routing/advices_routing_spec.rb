require "spec_helper"

describe AdvicesController do
  describe "routing" do

    it "routes to #index" do
      get("/advices").should route_to("advices#index")
    end

    it "routes to #new" do
      get("/advices/new").should route_to("advices#new")
    end

    it "routes to #show" do
      get("/advices/1").should route_to("advices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/advices/1/edit").should route_to("advices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/advices").should route_to("advices#create")
    end

    it "routes to #update" do
      put("/advices/1").should route_to("advices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/advices/1").should route_to("advices#destroy", :id => "1")
    end

  end
end
