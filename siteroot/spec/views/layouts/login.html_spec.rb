require File.dirname(__FILE__) + '/../../spec_helper'

describe "/layouts/login.html" do
  it 'renders' do
    view.stub!(:htcv2_config).and_return(Htcv2::Config.default)
    render :template => '/layouts/login', :formats => [:html]
  end
end
