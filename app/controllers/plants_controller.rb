class PlantsController < ApplicationController
  # GET /gardens/:garden_id/plants/new
  # def new
  #   @plant = Plant.new
  #   @garden = Garden.find(params[:garden_id])
  # end

  # POST /gardens/:garden_id/plants
  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    if @plant.save
      redirect_to garden_path(@garden)
    else
      # Next line will render the '/views/plants/new.html.erb'
      # render :new, status: :unprocessable_entity

      # Next line will render the '/views/gardens/show.html.erb'
      render 'gardens/show', status: :unprocessable_entity
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@plant.garden), notice: 'Plant destroyed!'
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
