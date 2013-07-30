require 'spec_helper'

describe "advice_posts/show" do
  before(:each) do
    @advice_post = assign(:advice_post, stub_model(AdvicePost))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
