require 'test_helper'

class EquiposControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get equipos_index_url
    assert_response :success
  end

  test "should get new" do
    get equipos_new_url
    assert_response :success
  end

  test "should get create" do
    get equipos_create_url
    assert_response :success
  end

  test "should get show" do
    get equipos_show_url
    assert_response :success
  end

  test "should get edit" do
    get equipos_edit_url
    assert_response :success
  end

  test "should get update" do
    get equipos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get equipos_destroy_url
    assert_response :success
  end

end
