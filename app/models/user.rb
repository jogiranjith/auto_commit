class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Autocode: Relationships

  # Autocode: Validations

  # Autocode: Callback

	# File Upload

	# Soft Destroy
end
