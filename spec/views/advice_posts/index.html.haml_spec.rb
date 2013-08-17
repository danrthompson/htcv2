require 'spec_helper'

describe "advice_posts/index" do
  before(:each) do
    assign(:advice_posts, [
      stub_model(AdvicePost),
      stub_model(AdvicePost)
    ])
  end

  it "renders a list of advice_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
