class WelcomeController < ApplicationController

	def index
    if user_signed_in?
      render "index"
    else
      redirect_to new_user_registration_path
    end
  end


end
