class Event < ActiveRecord::Base
	belongs_to :host
	has_one :seating_plan
	has_many :guests

	validates :host, presence: true 
end
