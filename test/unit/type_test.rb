require 'test_helper'

class TypeTest < ActiveSupport::TestCase
	test "should not save type without label" do
		type = Type.new({:category => 'Category'})
		assert !type.save
  	end

  	test "should not save type without category" do
		type = Type.new({:label => 'Type 1'})
		assert !type.save
  	end
end
