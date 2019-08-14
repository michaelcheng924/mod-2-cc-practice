require 'test_helper'

class KoalaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get koala_index_url
    assert_response :success
  end

  test "should get show" do
    get koala_show_url
    assert_response :success
  end

end
