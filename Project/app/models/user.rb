class User < ActiveRecord::Base
	has_many :decisions
	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 	validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
 	
 	mount_uploader :avatar, ImageUploader
 	mount_uploader :fondo, ImageUploader

end
