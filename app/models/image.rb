class Image < ApplicationRecord
	has_one_attached :foto

	validates :description, presence: true
end
