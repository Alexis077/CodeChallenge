require 'test_helper'

class SalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sale_index_url
    assert_response :success
  end

end
