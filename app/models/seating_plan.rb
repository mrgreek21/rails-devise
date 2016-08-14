class SeatingPlan < ActiveRecord::Base
  belongs_to :event
  has_many :tables

  validates :event, presence: true

  def num_tables
    Table.where(:seating_plan => self).count
  end
end
