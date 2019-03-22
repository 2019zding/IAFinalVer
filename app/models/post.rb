class Post < ApplicationRecord
	has_many_attached :images, dependent: :destroy
	has_one_attached :file, dependent: :destroy
	validates :title, presence: true
	validates :body, presence: true
	validate :image_type

	private
	def image_type
		if images.attached? == false
			errors.add(:images, "are missing")
		end
		images.each do |image|
			if !image.content_type.in?(%('image/jpeg image/png'))
				errors.add(:images, 'needs to be a JPEG or PNG')
			end
	end
end
end
