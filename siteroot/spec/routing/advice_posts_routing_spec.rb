require "spec_helper"

describe AdvicePostsController do
  describe "routing" do

    it "routes to #index" do
      get("/advice_posts").should route_to("advice_posts#index")
    end

    it "routes to #new" do
      get("/advice_posts/new").should route_to("advice_posts#new")
    end

    it "routes to #show" do
      get("/advice_posts/1").should route_to("advice_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/advice_posts/1/edit").should route_to("advice_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/advice_posts").should route_to("advice_posts#create")
    end

    it "routes to #update" do
      put("/advice_posts/1").should route_to("advice_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/advice_posts/1").should route_to("advice_posts#destroy", :id => "1")
    end

  end
end
