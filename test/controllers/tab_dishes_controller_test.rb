require "test_helper"

class TabDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tab_dishes_index_url
    assert_response :success
  end

  test "should get show" do
    get tab_dishes_show_url
    assert_response :success
  end

  test "should get new" do
    get tab_dishes_new_url
    assert_response :success
  end

  test "should get create" do
    get tab_dishes_create_url
    assert_response :success
  end

  test "should get edit" do
    get tab_dishes_edit_url
    assert_response :success
  end

  test "should get update" do
    get tab_dishes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tab_dishes_destroy_url
    assert_response :success
  end
end
