require File.dirname(__FILE__) + '/../../spec_helper'

describe "/layouts/application.html" do
  before(:each) do
    view.stub!(:htcv2_config).and_return(Htcv2::Config.default)

    mock_tag = mock_model(Tag,
      :name     => 'code',
      :taggings => [mock_model(Tagging)]
    )
    Tag.stub!(:find).and_return([mock_tag])

    mock_page = mock_model(Page,
      :title     => 'about',
      :slug     => 'about'
    )
    Page.stub!(:find).and_return([mock_page])
  end

  it 'renders' do
    render :template => '/layouts/application', :formats => [:html]
  end
end
