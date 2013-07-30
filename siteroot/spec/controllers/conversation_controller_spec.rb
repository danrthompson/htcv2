require 'spec_helper'

describe ConversationController do

  describe "GET 'advice'" do
    it "returns http success" do
      get 'advice'
      response.should be_success
    end
  end

end
