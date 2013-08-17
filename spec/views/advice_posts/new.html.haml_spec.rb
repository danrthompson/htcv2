require 'spec_helper'

describe "advice_posts/new" do
  before(:each) do
    assign(:advice_post, stub_model(AdvicePost).as_new_record)
  end

  it "renders new advice_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", advice_posts_path, "post" do
    end
  end
end
