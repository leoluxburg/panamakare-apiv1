require 'test_helper'

class AdvicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advice = advices(:one)
  end

  test "should get index" do
    get advices_url, as: :json
    assert_response :success
  end

  test "should create advice" do
    assert_difference('Advice.count') do
      post advices_url, params: { advice: { description: @advice.description, name: @advice.name, trip_id: @advice.trip_id } }, as: :json
    end

    assert_response 201
  end

  test "should show advice" do
    get advice_url(@advice), as: :json
    assert_response :success
  end

  test "should update advice" do
    patch advice_url(@advice), params: { advice: { description: @advice.description, name: @advice.name, trip_id: @advice.trip_id } }, as: :json
    assert_response 200
  end

  test "should destroy advice" do
    assert_difference('Advice.count', -1) do
      delete advice_url(@advice), as: :json
    end

    assert_response 204
  end
end
