class ToolsController < ApplicationController
  def resources
  	@resources = Resource.all
  end

  def services
  	@services = Service.all
  end
end
