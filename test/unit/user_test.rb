require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "a user shoud enter a first name" do
     user = User.new
     assert !user.save
     assert !user.errors[:first_name].empty?
 end

      test "a user shoud enter a last name" do
     user = User.new
     assert !user.save
     assert !user.errors[:last_name].empty?
 end
   test "a user shoud enter a profile name" do
     user = User.new
     assert !user.save
     assert !user.errors[:profile_name].empty?
 end

	 test "a user should have a unique profile name" do
 	 user= User.new
	 user.profile_name = "gjianas"
	 user.first_name="Gus"
	 user.last_name="Jianas"
	 user.password="mulax028"
	 user.password_confirmation="mulax028"
	 user.email="gjianas@gmail.com"

 	assert !user.save
	 assert !user.errors[:profile_name] .empty? 	
 end

	test "a user should have a profile name without spaces" do
 	user = User.new
 	user.profile_name = "spces in profile"

 	assert !user.save
 	assert !user.errors[:profile_name].empty?
 	assert !user.errors[:profile_name].include?("Must be formatted correctly.")
	end
end	
