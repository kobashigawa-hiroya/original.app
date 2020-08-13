require 'test_helper'

class SaturdayApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saturday_applications_index_url
    assert_response :success
  end

  test "should get new" do
    get saturday_applications_new_url
    assert_response :success
  end

  test "should get create" do
    get saturday_applications_create_url
    assert_response :success
  end

  test "should get edit" do
    get saturday_applications_edit_url
    assert_response :success
  end

  test "should get update" do
    get saturday_applications_update_url
    assert_response :success
  end

  test "should get destroy" do
    get saturday_applications_destroy_url
    assert_response :success
  end

end
