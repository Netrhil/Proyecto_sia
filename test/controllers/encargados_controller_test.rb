require 'test_helper'

class EncargadosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get encargados_index_url
    assert_response :success
  end

  test "should get new" do
    get encargados_new_url
    assert_response :success
  end

  test "should get create" do
    get encargados_create_url
    assert_response :success
  end

  test "should get show" do
    get encargados_show_url
    assert_response :success
  end

  test "should get edit" do
    get encargados_edit_url
    assert_response :success
  end

  test "should get update" do
    get encargados_update_url
    assert_response :success
  end

  test "should get destroy" do
    get encargados_destroy_url
    assert_response :success
  end

end
