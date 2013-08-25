class HomeController < ApplicationController
	def index
    @properties = Property.all
    @banner = Property.last(6)
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end