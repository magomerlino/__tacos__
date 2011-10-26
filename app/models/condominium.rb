class Condominium < ActiveRecord::Base
	has_many :exercises
	has_many :ownerships
	has_many :checking_accounts
	has_many :staircases
	has_many :units, :through => :staircases

	has_many :units, :through => :staircases
	has_many :figures, :through => :ownerships

	validates :name, :presence => true
	validates :address, :presence => true
	validates :zip_code, :presence => true
	validates :city, :presence => true
end
