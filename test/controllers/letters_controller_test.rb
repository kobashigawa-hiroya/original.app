require 'test_helper'

class LettersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get letters_index_url
    assert_response :success
  end

  test "should get new" do
    get letters_new_url
    assert_response :success
  end

  test "should get create" do
    get letters_create_url
    assert_response :success
  end

  test "should get edit" do
    get letters_edit_url
    assert_response :success
  end

  test "should get update" do
    get letters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get letters_destroy_url
    assert_response :success
  end

end
