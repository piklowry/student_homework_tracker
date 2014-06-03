class AssignmentsController < ApplicationController
  # before_filter :load
  respond_to :html, :json, :js

 
  # load_and_authorize_resource 

  # def load
  #   @assignments = Assignment.all
  #   @assignment = Assignment.new
  # end

  def index
  end

  def show

    @assignment = Assignment.find(params[:id])
    @new_comment = @assignment.comments.build

    # @assignment = Assignment.find(params[:id])
    @submission = @assignment.submissions.build
    # @new_comment = @assignment.comments.build
    # user = @submission.assignment_id = current_user.id
  end




  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.user_id = current_user.id
    if @assignment.save
      redirect_to :back
      flash[:notice] = "Successfully created post."
      @assignments = Assignment.all
    end
  end

  def edit
    @assignment = Assignment.find(params[:id])
    # unauthorized! if cannot? :edit, @article
  end

  def update
    @assignment = Assignment.find(params[:id])
    if @assignment.update_attributes(assignment_params)
      flash[:notice] = "Successfully updated post."
      respond_with @assignment
    end
  end


  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to :back
    flash[:notice] = "Successfully destroyed post."
    @assignments = Assignment.all
  end

  def change_completed
    @assignment = Assignment.find(params[:id])
    if @assignment.completed
      val = false
    else
      val = true
    end
    @assignment.update_attributes(:completed => val)
    redirect_to assignments_path
  end

  private

  def assignment_params
    params.require(:assignment).permit!
  end 

end






