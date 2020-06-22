class NeighborhoodsController < ApplicationController

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.new(neighborhood_params)
    if @neighborhood.save
      redirect_to neighborhood_path(@neighborhood)
    else
      render new_neighborhood_path
    end
  end

  def show
    @neighborhood = Neighborhood.find_by(id: params[:id])
  end

  private

  def neighborhood_params
    params.require(:neighborhood).permit(
      :name,
      :city,
      :state
    )
  end
end
