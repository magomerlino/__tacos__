class OwnershipUse < ActiveRecord::Base
	set_table_name 'v_ownerships_use'

	belongs_to :ownership
	belongs_to :exercise
	belongs_to :type
	belongs_to :unit
end
