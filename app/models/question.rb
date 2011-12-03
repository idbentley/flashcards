class Question < ActiveRecord::Base
	belongs_to :media
	belongs_to :answer
	accepts_nested_attributes_for :media

	after_initialize do
		self.build_media unless self.media
	end
end
