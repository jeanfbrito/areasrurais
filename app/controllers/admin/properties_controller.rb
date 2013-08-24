class Admin::PropertiesController < ApplicationController
	layout "admin" 
  def index
    #@properties = Property.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

end