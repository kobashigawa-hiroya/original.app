require 'test_helper'

class SaturdayApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saturday_application_index_url
    assert_response :success
  end

  test "should get new" do
    get saturday_application_new_url
    assert_response :success
  end

  test "should get create" do
    get saturday_application_create_url
    assert_response :success
  end

  test "should get edit" do
    get saturday_application_edit_url
    assert_response :success
  end

  test "should get update" do
    get saturday_application_update_url
    assert_response :success
  end

  test "should get destroy" do
    get saturday_application_destroy_url
    assert_response :success
  end

end
