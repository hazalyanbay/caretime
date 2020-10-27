class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.victim = current_user
    if @ticket.save
      redirect_to ticket_path(@ticket)
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
    redirect_to dashboard_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:issue_type, :comment, :status)
  end
end
