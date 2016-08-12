class Rsvp < ActiveRecord::Base
	belongs_to :guest

	validates :guest, presence: true
end
