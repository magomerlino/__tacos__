class Exercise < ActiveRecord::Base
	belongs_to :condominium

	validates :starting_date, :presence => true
	validates :ending_date, :presence => true
	validates :condominium, :presence => true
end
