class CommentsController < ApplicationController

  def index
    @comments = Comments.all

  end

  def new
    @comment = Comments.new
  end



	def create
	  @new_comment = Comment.new(comment_params)
	  if @new_comment.save
	  redirect_to :back
	  else
	  render photo_path
	  end
	end


	private

  def comment_params
  params.require(:comment).permit!
  end

end



