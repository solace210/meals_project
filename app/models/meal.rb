class Meal < ActiveRecord::Base
	has_many :comments , dependent: :destroy
	validates :title,:list_ingrediants, presence: true, length: {minimum: 5 }
	
end
