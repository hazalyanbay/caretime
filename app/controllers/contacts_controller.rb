class ContactsController < ApplicationController
  before_action :contact_id, only: [:show, :edit, :update]
  def show; end

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

  def edit; end

  def update
    @contact.user = current_user
    redirect_to root_path
    # can be changed after all the routes are settled
  end

  private

  def contact_id
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:full_name, :phone_number, :user_id)
  end
end
