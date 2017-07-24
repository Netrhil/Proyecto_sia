require 'test_helper'

class DistribucionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get distribucions_index_url
    assert_response :success
  end

  test "should get new" do
    get distribucions_new_url
    assert_response :success
  end

  test "should get create" do
    get distribucions_create_url
    assert_response :success
  end

  test "should get show" do
    get distribucions_show_url
    assert_response :success
  end

  test "should get edit" do
    get distribucions_edit_url
    assert_response :success
  end

  test "should get update" do
    get distribucions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get distribucions_destroy_url
    assert_response :success
  end

end
