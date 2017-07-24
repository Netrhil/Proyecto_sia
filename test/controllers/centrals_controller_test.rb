require 'test_helper'

class CentralsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get centrals_new_url
    assert_response :success
  end

  test "should get create" do
    get centrals_create_url
    assert_response :success
  end

  test "should get show" do
    get centrals_show_url
    assert_response :success
  end

  test "should get edit" do
    get centrals_edit_url
    assert_response :success
  end

  test "should get update" do
    get centrals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get centrals_destroy_url
    assert_response :success
  end

end
