require File.dirname(__FILE__) + '/../../../spec_helper'

describe "/admin/sessions/new.html" do
  after(:each) do
    rendered.should be_valid_html5_fragment
  end

  it "renders" do
    view.stub!(:htcv2_config).and_return(Htcv2::Config.default)
    view.stub!(:allow_login_bypass?).and_return(true)
    render :template => '/admin/sessions/new', :formats => [:html]
  end
end
