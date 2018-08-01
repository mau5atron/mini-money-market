class Borrower < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :secure_validatable, password_length: 6..24

	# else { message: "can't be blank"}
  # validates :last_name, presence: { message: "can't be blank"}
  # validates :phone, presence: { message: "can't be blank"}, length: { is: 10 }
  # validates :street, presence: { message: "can't be blank"}
  # validates :state, presence: { message: "can't be blank"}

end
