class CohortsController < ApplicationController
  respond_to :html, :json, :js
  before_filter :load

  def load
    @cohorts = Cohort.all
    @cohort = Cohort.new
  end

  def index
  end

  def new
    @cohort = Cohort.new
  end

  def show
    @cohort = Cohort.find(params[:id])
    @assignment = @cohort.assignments.build
  end

   def create
    # @cohort = @location.cohorts.build
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to :back
      flash[:notice] = "Successfully created post."
      @cohorts = Cohort.all
    end
  end
 
  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update_attributes(cohort_params)
      flash[:notice] = "Successfully updated post."
      respond_with @cohort
    end
  end


  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to :back
    flash[:notice] = "Successfully destroyed post."
    @cohorts = Cohort.all
  end

  private

  def cohort_params
    params.require(:cohort).permit!
  end 

end






