class Borrower < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :secure_validatable, password_length: 6..24
  validates :first_name, length: { maximum: 30 }
  validates :last_name, length: { maximum: 30 }
  validates :street, length: { maximum: 25 }
  validates :zip, length: { maximum: 5 }
end
