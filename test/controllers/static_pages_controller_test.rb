require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
	test "setup landing page" do
		get :index	
		assert_response :success
	end
end
