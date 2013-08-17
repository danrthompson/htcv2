require 'spec_helper'

describe ToolsController do

  describe "GET 'resources'" do
    it "returns http success" do
      get 'resources'
      response.should be_success
    end
  end

  describe "GET 'services'" do
    it "returns http success" do
      get 'services'
      response.should be_success
    end
  end

end
