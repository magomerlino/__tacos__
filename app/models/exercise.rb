class Exercise < ActiveRecord::Base
	belongs_to :condominium

	has_many :ownerships_use, :class_name => 'OwnershipUse', :foreign_key => :exercise_id
	has_many :ownerships, :through => :ownerships_use
	has_many :units, :through => :ownerships, :uniq => true

	validates :starting_date, :presence => true
	validates :ending_date, :presence => true
	validates :condominium, :presence => true
end
