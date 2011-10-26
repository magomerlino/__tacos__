require 'test_helper'

class UnitTest < ActiveSupport::TestCase
	test "should not save unit without extension" do
		unit = Unit.new({:staircase_id => 1})
		assert !unit.save
  	end

  	test "should not save unit without staircase" do
		unit = Unit.new({:extension => '3'})
		assert !unit.save
  	end
end
