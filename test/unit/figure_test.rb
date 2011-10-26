require 'test_helper'

class FigureTest < ActiveSupport::TestCase
	test "should not save figure without first_name" do
		figure = Figure.new({:last_name => 'Surname'})
		assert !figure.save
  	end

  	test "should not save figure without last_name" do
		figure = Figure.new({:first_name => 'Name'})
		assert !figure.save
  	end
end
