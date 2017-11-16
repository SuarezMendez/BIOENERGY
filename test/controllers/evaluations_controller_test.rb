require 'test_helper'

class EvaluationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get evaluations_show_url
    assert_response :success
  end

end
