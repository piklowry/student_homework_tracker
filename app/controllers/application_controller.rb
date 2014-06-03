class ApplicationController < ActionController::Base
before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# download_photo_pic_cohort could be only photo_pic_cohort not sure about the routes

  def download_photo_pic_cohort
    @photo = Photo.find(params[:id])
    file = @photo.photo_pic
    send_file file.path
  end

  protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password,
      :password_confirmation, :remember_me, :photo_pic, :role, :cohort_id, :photo_pic_cache) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password,
      :password_confirmation, :current_password, :photo_pic, :photo_pic_cache) }
    # devise_parameter_sanitizer.for(:sign_up) << :role
  end

  

end
