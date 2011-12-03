class Answer < ActiveRecord::Base
	# This is a bit of a semantic bitch.
	# Because of the way rails does fk-ing with has_many rels,
  # both questions have to answers have to "belong_to" media
  # even though, the notion of ownership seems more obviously the other direction.
	belongs_to :media
	has_many :questions
	accepts_nested_attributes_for :media, :questions

	after_initialize do
		self.build_media unless self.media
	end
	
end
