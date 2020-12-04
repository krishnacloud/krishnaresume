require 'test_helper'

class QanasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qana = qanas(:one)
  end

  test "should get index" do
    get qanas_url
    assert_response :success
  end

  test "should get new" do
    get new_qana_url
    assert_response :success
  end

  test "should create qana" do
    assert_difference('Qana.count') do
      post qanas_url, params: { qana: { answer: @qana.answer, createddate: @qana.createddate, question: @qana.question, topic: @qana.topic, version: @qana.version } }
    end

    assert_redirected_to qana_url(Qana.last)
  end

  test "should show qana" do
    get qana_url(@qana)
    assert_response :success
  end

  test "should get edit" do
    get edit_qana_url(@qana)
    assert_response :success
  end

  test "should update qana" do
    patch qana_url(@qana), params: { qana: { answer: @qana.answer, createddate: @qana.createddate, question: @qana.question, topic: @qana.topic, version: @qana.version } }
    assert_redirected_to qana_url(@qana)
  end

  test "should destroy qana" do
    assert_difference('Qana.count', -1) do
      delete qana_url(@qana)
    end

    assert_redirected_to qanas_url
  end
end
