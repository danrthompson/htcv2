require 'spec_helper'

describe "advice_posts/edit" do
  before(:each) do
    @advice_post = assign(:advice_post, stub_model(AdvicePost))
  end

  it "renders the edit advice_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", advice_post_path(@advice_post), "post" do
    end
  end
end
