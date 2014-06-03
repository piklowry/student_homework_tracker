class SubmissionsController < ApplicationController
  before_filter :load
  respond_to :html, :json

  def load
    @submissions = Submission.all
    @submission = Submission.new
  end

  def index
  end

  def show
    @submission = Submission.find(params[:id])
    @new_comment = @submission.comments.build
    # @submission = Submission.find(params[:id])
    # @submission.user_id = current_user.id
  end

  # def create
  #   @submission = Submission.new(submission_params)
  #   @submission.user_id = current_user.id
  #   if @submission.save
  #     flash[:notice] = "Successfully created post."
  #     @submissions = Submission.all
  #   end
  # end

  def create
    @submission = Submission.new(submission_params)
    @submission.user_id = current_user.id
    if @submission.save
      redirect_to :back
    else
      render assignment_path
    end
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])
    # @submission.user_id = current_user.id
    if @submission.update_attributes(submission_params)
      flash[:notice] = "Successfully updated post."
      respond_with @submission
    end
  end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    redirect_to :back
    flash[:notice] = "Successfully destroyed post."
  end

  def change_completed
    @submission = Submission.find(params[:id])
    if @submission.completed
      val = false
    else
      val = true
    end
    @submission.update_attributes(:completed => val)
    redirect_to submissions_path
  end

  private

  def submission_params
    params.require(:submission).permit!
  end 

end
