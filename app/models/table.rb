class Table < ActiveRecord::Base
	belongs_to :seating_plan
	has_many :seats

	validates :seating_plan, presence: true
end
