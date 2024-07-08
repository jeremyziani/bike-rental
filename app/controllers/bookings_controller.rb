class BookingsController < ApplicationController

def new
  @booking = Booking.new
  @bike = Bike.find(params[:bike_id])
end

def create
  @booking = Booking.new(booking_params)
  @booking.user = current_user
  @booking.bike = Bike.find(params[:bike_id])
  if @booking.save
    redirect_to bikes_path
    flash[:alert] = "Booking created successfully"
  else
    render :new, status: :unprocessable_entity
  end
end

def show
  @booking = Booking.find(params[:id])
end

def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to bikes_path
  flash[:alert] = "Booking deleted successfully"
end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end
