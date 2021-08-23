class Car < ApplicationRecord
	has_many :comments, as: :commentable
end
