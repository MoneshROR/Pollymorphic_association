class Auto < ApplicationRecord
	has_many :comments, as: :commentable
end
