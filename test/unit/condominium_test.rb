require 'test_helper'

class CondominiumTest < ActiveSupport::TestCase
  	test "should not save condominium without name" do
		con = Condominium.new({:address => 'adress', :zip_code => 'zip', :city => 'city'})
		assert !con.save
  	end

  	test "should not save condominium without address" do
		con = Condominium.new({:name => 'name', :zip_code => 'zip', :city => 'city'})
		assert !con.save
  	end

  	test "should not save condominium without zip_code" do
		con = Condominium.new({:name => 'name', :address => 'address', :city => 'city'})
		assert !con.save
  	end

  	test "should not save condominium without city" do
		con = Condominium.new({:name => 'name', :zip_code => 'zip', :address => 'address'})
		assert !con.save
  	end

  	test "condominium_1 should have two units" do
  		assert_equal 2, Condominium.find(1).units.count
  	end
end
