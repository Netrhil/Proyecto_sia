require 'test_helper'

class MueblesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get muebles_index_url
    assert_response :success
  end

  test "should get new" do
    get muebles_new_url
    assert_response :success
  end

  test "should get create" do
    get muebles_create_url
    assert_response :success
  end

  test "should get show" do
    get muebles_show_url
    assert_response :success
  end

  test "should get edit" do
    get muebles_edit_url
    assert_response :success
  end

  test "should get update" do
    get muebles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get muebles_destroy_url
    assert_response :success
  end

end
