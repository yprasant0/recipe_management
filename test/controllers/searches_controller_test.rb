require 'test_helper'

class SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get criteria" do
    get searches_criteria_url
    assert_response :success
  end

end
