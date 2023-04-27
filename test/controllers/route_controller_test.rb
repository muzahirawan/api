require "test_helper"

class RouteControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get route_show_url
    assert_response :success
  end

  test "should get index" do
    get route_index_url
    assert_response :success
  end

  test "should get create" do
    get route_create_url
    assert_response :success
  end
end
