class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :get_customer

  def index
    @bookings = Booking.all
    @city = City.find(params[:city_id])
    @customer = Customer.find(params[:customer_id])
    @bookings = @customer.bookings
  end

  def show
  end

  def new

    @booking = Booking.new
  end

  def edit
  end

  def create
    binding.pry
      @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
    end
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:customer_id, :cleaner_id, :date)
    end

    def get_customer
       @customer = Customer.find(params[:id])
    end
end
