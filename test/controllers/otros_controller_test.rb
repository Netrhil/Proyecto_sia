require 'test_helper'

class OtrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get otros_index_url
    assert_response :success
  end

  test "should get new" do
    get otros_new_url
    assert_response :success
  end

  test "should get create" do
    get otros_create_url
    assert_response :success
  end

  test "should get show" do
    get otros_show_url
    assert_response :success
  end

  test "should get edit" do
    get otros_edit_url
    assert_response :success
  end

  test "should get update" do
    get otros_update_url
    assert_response :success
  end

  test "should get destroy" do
    get otros_destroy_url
    assert_response :success
  end

end
