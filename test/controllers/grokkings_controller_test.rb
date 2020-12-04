require 'test_helper'

class GrokkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grokking = grokkings(:one)
  end

  test "should get index" do
    get grokkings_url
    assert_response :success
  end

  test "should get new" do
    get new_grokking_url
    assert_response :success
  end

  test "should create grokking" do
    assert_difference('Grokking.count') do
      post grokkings_url, params: { grokking: { article: @grokking.article, creationdate: @grokking.creationdate, topic: @grokking.topic } }
    end

    assert_redirected_to grokking_url(Grokking.last)
  end

  test "should show grokking" do
    get grokking_url(@grokking)
    assert_response :success
  end

  test "should get edit" do
    get edit_grokking_url(@grokking)
    assert_response :success
  end

  test "should update grokking" do
    patch grokking_url(@grokking), params: { grokking: { article: @grokking.article, creationdate: @grokking.creationdate, topic: @grokking.topic } }
    assert_redirected_to grokking_url(@grokking)
  end

  test "should destroy grokking" do
    assert_difference('Grokking.count', -1) do
      delete grokking_url(@grokking)
    end

    assert_redirected_to grokkings_url
  end
end
