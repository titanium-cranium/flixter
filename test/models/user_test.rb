require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "create user" do
		user = FactoryGirl.create(:user)
		assert_response :success
	end
end
