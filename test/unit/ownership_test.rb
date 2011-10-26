require 'test_helper'

class OwnershipTest < ActiveSupport::TestCase
	test "should not save ownership without starting_date" do
		own = Ownership.new({:figure_id => 1, :unit_id => 1})
		assert !own.save
  	end

  	test "should not save ownership without figure" do
		own = Ownership.new({:starting_date => Time.now, :unit_id => 1})
		assert !own.save
  	end

  	test "should not save ownership without unit" do
		own = Ownership.new({:starting_date => Time.now, :figure_id => 1})
		assert !own.save
  	end
end