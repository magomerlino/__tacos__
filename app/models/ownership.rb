class Ownership < ActiveRecord::Base
	belongs_to :figure
	belongs_to :unit
	belongs_to :type

	has_one :ownership_use

	validates :starting_date, :presence => true
	validates :figure, :presence => true
	validates :unit, :presence => true

	#default_scope where("ownerships.starting_date < :now AND (ownerships.ending_date IS NULL OR ownerships.ending_date > :now)", {:now => Time.zone.now})

end
