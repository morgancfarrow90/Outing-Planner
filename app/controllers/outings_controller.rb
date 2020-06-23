class OutingsController < ApplicationController

  def new
    @outing= Outing.new
  end

  def create
    @outing= Outing.new(outing_params)
    if @outing.save
      redirect_to outing_path(@outing)
    else
      render new_outing_path
    end
  end

  def customize_outing
    @outing= Outing.find_by(id: params[:id])
    
  end

  def show
    @outing= Outing.find_by(id: params[:id])

  end

  private

  def outing_params
    params.require(:outing).permit(
      :user_id,
      :outing_id
    )
  end

end
