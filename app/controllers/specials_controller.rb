class SpecialsController < ApplicationController

  def new
    @special = Special.new
  end

  def create
    @special = Special.new(special_params)
    if @special.save
      redirect_to special_path(@special)
    else
      render new_special_path
    end
  end

  def show
    @special = Special.find_by(id: params[:id])
  end

  private

  def special_params
    params.require(:special).permit(
      :name,
      :address,
      :neighborhood_id,
      :user_id,
      :monday,
      :tuesday,
      :wednesday,
      :thursday,
      :friday,
      :saturday,
      :sunday,
      :start_time,
      :end_time,
      :details
    )
  end
end
