class SeatingPlan < ActiveRecord::Base
	belongs_to :event
	has_many :tables

	validates :event, presence: true
end
