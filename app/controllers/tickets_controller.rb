class TicketsController < ApplicationController

  before_action :set_ticket, only: [:show, :update]
  def index
    @tickets = Ticket.all
  end

  def show; end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.victim = current_user
    if @ticket.save
      @chatroom = Chatroom.create(name: "Chatroom for ticket - #{@ticket.id}", ticket: @ticket)
      redirect_to chatroom_path(@chatroom)
    else
      render :new
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(ticket_params)
    redirect_to tickets_path
  end

  def contact_ticket
    our_user = User.find(@ticket.victim_id)
    if our_user.worker == true
      @contact_id = our_user.id
      @contact_id
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:issue_type, :comment, :status)
  end
end
