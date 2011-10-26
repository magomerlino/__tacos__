class CheckingAccount < ActiveRecord::Base
	belongs_to :condominium

	validates :condominium, :presence => true
end
