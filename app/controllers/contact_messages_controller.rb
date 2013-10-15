class ContactMessagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @contact_message = ContactMessage.new

    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @contact_message }
    end
  end

  def create
    @contact_message = ContactMessage.new params.require(:contact_message).permit(:name, :email, :message, :phone)

    respond_to do |format|
      if @contact_message.save
        format.html { redirect_to @contact_message, notice: 'contact_message was successfully created.' }
        format.json { render json: @contact_message, status: :created, location: @contact_message }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_message.errors, status: :unprocessable_entity }
      end
    end
  end

end