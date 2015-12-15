require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
		test "setup new course" do
			user = FactoryGirl.create(:user)
				sign_in user
	
			assert_difference 'Course.count' do
				post :create, :course => {
					:name => "blah",
					:description => 'get them hips swaying',
					:cost => 100.00
					}
				end	 
			assert_redirected_to instructor_course_path(:id)
		end
end
