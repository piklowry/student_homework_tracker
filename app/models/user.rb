class User < ActiveRecord::Base
	has_many :assignments
	belongs_to :cohort
	has_many :comments, as: :commentable
	mount_uploader :photo_pic, PhotoPicUploader
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
end
