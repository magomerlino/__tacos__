class Unit < ActiveRecord::Base
	has_many :ownerships
	has_many :owners, :class_name => 'Figure', :through => :ownerships,
		:source => :figure, :conditions => " ownerships.type_id = 1"
	has_many :tenants, :class_name => 'Figure', :through => :ownerships,
		:source => :figure, :conditions => " ownerships.type_id = 2"
	belongs_to :staircase

	validates :staircase, :presence => true
	validates :extension, :presence => true

	def tenant
		tenants.where("starting_date < ? AND (ending_date IS NULL OR ending_date > ?)", Time.now, Time.now).order('id DESC').limit(1).first
	end
end
