class LocationsController < ApplicationController
  respond_to :html, :json, :js
  before_filter :load

  def load
 
    @locations = Location.all
    @location = Location.new
  end

  def index
  end

  def show
    @location = Location.find(params[:id])
    @cohort = @location.cohorts.build

  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to :back
      flash[:notice] = "Successfully created post."
      @locations = Location.all
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      flash[:notice] = "Successfully updated post."
      respond_with @location
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to :back
    flash[:notice] = "Successfully destroyed post."
    @locations = Location.all
  end

  private

  def location_params
    params.require(:location).permit!
  end 

end
