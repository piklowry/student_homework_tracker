class User < ActiveRecord::Base
	ROLES = %w[admin normal]
	has_many :assignments
	belongs_to :cohort
	has_many :roles
	has_many :comments
	has_many :submissions
	accepts_nested_attributes_for :submissions
  accepts_nested_attributes_for :comments
	
	mount_uploader :photo_pic, PhotoPicUploader
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
end
