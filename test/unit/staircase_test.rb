require 'test_helper'

class StaircaseTest < ActiveSupport::TestCase
	test "should not save staircase without label" do
		stair = Staircase.new({:condominium_id => 1})
		assert !stair.save
  	end

  	test "should not save staircase without condominium" do
		stair = Staircase.new({:label => 'A'})
		assert !stair.save
  	end
end
