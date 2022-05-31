require "test_helper"

class BillDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bill_dishes_new_url
    assert_response :success
  end

  test "should get create" do
    get bill_dishes_create_url
    assert_response :success
  end

  test "should get index" do
    get bill_dishes_index_url
    assert_response :success
  end

  test "should get show" do
    get bill_dishes_show_url
    assert_response :success
  end

  test "should get edit" do
    get bill_dishes_edit_url
    assert_response :success
  end

  test "should get update" do
    get bill_dishes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bill_dishes_destroy_url
    assert_response :success
  end
end
