class Guest < ActiveRecord::Base
	belongs_to :user
	belongs_to :event
	has_one :rsvp
	has_one :seat

	validates :event, presence: true
end
