class Admin::PropertiesController < InheritedResources::Base
	layout "admin" 

  def property_params
    params.require(:property).permit(:address_name, :value)
  end

  def index
    @properties = Property.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @property = Property.new

    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @property }
    end
  end

  def create
    @property = Property.new params.require(:property).permit(:description, :value)    
    @property.localized.assign_attributes(permitted_params[:property])

    respond_to do |format|
      if @property.save
        format.html { redirect_to edit_admin_property_path(@property), notice: 'Property was successfully created.' }
        format.json { render json: @property, status: :created, location: @property }
      else
        format.html { render action: "new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @property = Property.find(params[:id])
    @property = resource.localized
    render :layout => !request.xhr?
  end

  def update
    @property = Property.find(params[:id])
    @property.localized.update_attributes(permitted_params[:property])

    respond_to do |format|
      if @property.update_attributes(property_params)
        format.html { redirect_to [:admin, @property], notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def pictures_upload
    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @property }
    end
  end

  private

  def permitted_params
    params.permit(property: [:value])
  end

end