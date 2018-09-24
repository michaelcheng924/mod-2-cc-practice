class PetRocksController < ApplicationController
  def index
    @pet_rocks = PetRock.all
  end

  def show
    @pet_rock = PetRock.find(params[:id])
  end

  def create
    PetRock.create(params.require(:pet_rock).permit(:name, :koala_id))

    redirect_to pet_rocks_path
  end
end
