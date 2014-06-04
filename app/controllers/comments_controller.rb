class CommentsController < ApplicationController

  respond_to :html, :json

  def index
    @comments = Comments.all

  end

  def new
    @comment = Comments.new
  end



def create
  @new_comment = Comment.new(comment_params)
  @new_comment.user_id = current_user.id # you can do this here OR in your form
  if @new_comment.save
    redirect_to :back
  else
    render assignment_path
  end
end

def download_photo_pic
    @photo = Photo.find(params[:id])
    file = @photo.photo_pic
    send_file file.path
  end

   def update
    @new_comment = Comment.find(params[:id])
    if @new_comment.update_attributes(comment_params)
      flash[:notice] = "Successfully updated post."
      respond_with @new_comment
    end
  end

private

  def comment_params
  params.require(:comment).permit!
  end

end




# class CommentsController < ApplicationController
#   before_filter :load
  
#   def load
#  		@comments = Comment.all
#     @comment = Comment.new
#   end

#   def index
#   end

#   def create
#     @comment = Comment.new(comment_params)
#     if @comment.save
#       flash[:notice] = "Successfully created post."
#       @comments = Comment.all
#     end
#   end

#   def edit
#     @comment = Comment.find(params[:id])
#   end

#   def update
#     @comment = Comment.find(params[:id])
#     if @comment.update_attributes(comment_params)
#       flash[:notice] = "Successfully updated post."
#       @comments = Comment.all
#     end
#   end

#   def destroy
#     @comment = Comment.find(params[:id])
#     @comment.destroy
#     flash[:notice] = "Successfully destroyed post."
#     @comments = Comment.all
#   end

#   private

#   def comment_params
#     params.require(:comment).permit!
#   end 

# end





