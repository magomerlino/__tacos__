class Staircase < ActiveRecord::Base
	has_many :units
	belongs_to :condominium

	validates :condominium, :presence => true
	validates :label, :presence => true
end
