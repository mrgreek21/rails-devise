class Seat < ActiveRecord::Base
	belongs_to :table
	has_one :guest

	validates :table, presence: true
end
