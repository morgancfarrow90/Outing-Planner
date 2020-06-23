class SitesController < ApplicationController

  def new
    @site= Site.new
  end

  def create
    @site= Site.new(site_params)
    if @site.save
      redirect_to site_path(@site)
    else
      render new_site_path
    end
  end

  def show
    @site= Site.find_by(id: params[:id])
  end

  def destroy
    @site= Site.find_by(id: params[:id])
    @site.delete
  end

  private

  def site_params
    params.require(:site).permit(
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
