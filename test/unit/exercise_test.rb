require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
	test "should not save exercise without starting_date" do
		ex = Exercise.new({:ending_date => Time.now, :condominium_id => 1})
		assert !ex.save
  	end

  	test "should not save exercise without ending_date" do
		ex = Exercise.new({:starting_date => Time.now, :condominium_id => 1})
		assert !ex.save
  	end

  	test "should not save exercise without condominium" do
		ex = Exercise.new({:ending_date => Time.now, :starting_date => Time.now})
		assert !ex.save
  	end
end
