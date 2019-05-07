class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable


validate :uni_email?


private


def uni_email?


	emails = ["qut.edu.au", "uq.edu.au", "griffithuni.edu.au"]


	domain = email.split("@")[1]

	if emails.index(domain) != nil


		return true


	end

	errors.add(:email, "Sorry, your email is not available.")


end

end

