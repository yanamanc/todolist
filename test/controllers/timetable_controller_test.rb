require 'test_helper'

class TimetableControllerTest < ActionDispatch::IntegrationTest
  test "should get dela" do
    get timetable_dela_url
    assert_response :success
  end

end
