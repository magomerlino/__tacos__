require 'test_helper'

class CheckingAccountTest < ActiveSupport::TestCase
	test "should not save checking account without condominium" do
		ca = CheckingAccount.new
		assert !ca.save
  	end
end
