class Figure < ActiveRecord::Base
	has_many :ownerships
	has_many :units, :through => :ownerships
	has_many :own_units, :through => :ownerships, :class_name => 'Unit',
		:source => :unit, :conditions => "ownerships.type_id = 1"

	validates :first_name, :presence => true
	validates :last_name, :presence => true

	def name
		[first_name, last_name].join(' ')
	end

end
