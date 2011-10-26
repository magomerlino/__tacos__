class Type < ActiveRecord::Base
	scope :ownership_types, where(:category => "OWNERSHIP")

	validates :label, :presence => true
	validates :category, :presence => true
end
