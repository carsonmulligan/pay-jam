require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get restaurants_name_url
    assert_response :success
  end

  test "should get address" do
    get restaurants_address_url
    assert_response :success
  end

  test "should get user:references" do
    get restaurants_user:references_url
    assert_response :success
  end
end
