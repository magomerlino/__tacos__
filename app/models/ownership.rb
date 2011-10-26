class Ownership < ActiveRecord::Base
	belongs_to :condominium
	belongs_to :figure
	belongs_to :unit
	belongs_to :type

	validates :starting_date, :presence => true
	validates :figure, :presence => true
	validates :unit, :presence => true
	validates :condominium, :presence => true

end
