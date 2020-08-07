require 'test_helper'

class AdsencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adsences_index_url
    assert_response :success
  end

  test "should get new" do
    get adsences_new_url
    assert_response :success
  end

  test "should get create" do
    get adsences_create_url
    assert_response :success
  end

  test "should get edit" do
    get adsences_edit_url
    assert_response :success
  end

  test "should get update" do
    get adsences_update_url
    assert_response :success
  end

  test "should get destroy" do
    get adsences_destroy_url
    assert_response :success
  end

end
