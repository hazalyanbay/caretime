class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    # creating new contact with the required params
    @contact.user = current_user
    # user that contact belongs to is the user with the specified id
    if @contact.save
      redirect_to root_path
      # can be changed after the routes are determined
    else
      render :new
      # paths may change after setting the routes
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.user = current_user
    redirect_to root_path
    # can be changed after all the routes are settled
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :phone_number)
  end
end
