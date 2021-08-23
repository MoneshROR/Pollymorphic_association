class Bike < ApplicationRecord
	has_many :comments, as: :commentable
end
