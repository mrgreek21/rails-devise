class Host < ActiveRecord::Base
	belongs_to :user
	has_one :event
	
	validates :user, presence: true
end
