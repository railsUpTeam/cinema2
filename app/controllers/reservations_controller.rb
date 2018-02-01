class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
  def new
    @reservation = Reservation.new
  end

  def edit
  @reservation = Reservation.find(params[:id])
  end

  def update
  @reservation = Reservation.find(params[:id])
 
    if @reservation.update(reservation_params)
      redirect_to @reservation
    else
      render 'edit'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
 
    if @reservation.save
      redirect_to @reservation
    else
      render 'new'
    end
    
    #redirect_to @reservation
  end

  private
  def reservation_params
    params.require(:reservation).permit(:title, :text)
  end
end


