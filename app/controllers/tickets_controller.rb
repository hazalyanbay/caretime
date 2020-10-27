class TicketsController < ApplicationController
  before_action :ticket_id, only: [:show, :update]
  def index
    @tickets = Ticket.all
  end

  def show; end

  #def edit; end

  def update
    @ticket.update(ticket_params)
    redirect_to user_registration_path
    # redirect path can change after setting the routes
  end

  private

  def ticket_id
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:status, :comment)
  end
end
