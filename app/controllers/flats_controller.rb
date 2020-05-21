class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit update destroy]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end

  def show; end

  def edit; end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.delete
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.all.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :description, :address, :price_per_night, :number_of_guests, :flat_image_url)
  end
end
