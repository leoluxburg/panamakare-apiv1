require 'test_helper'

class SpotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot = spots(:one)
  end

  test "should get index" do
    get spots_url, as: :json
    assert_response :success
  end

  test "should create spot" do
    assert_difference('Spot.count') do
      post spots_url, params: { spot: { content: @spot.content, description: @spot.description, image: @spot.image, name: @spot.name, province_id: @spot.province_id, status: @spot.status } }, as: :json
    end

    assert_response 201
  end

  test "should show spot" do
    get spot_url(@spot), as: :json
    assert_response :success
  end

  test "should update spot" do
    patch spot_url(@spot), params: { spot: { content: @spot.content, description: @spot.description, image: @spot.image, name: @spot.name, province_id: @spot.province_id, status: @spot.status } }, as: :json
    assert_response 200
  end

  test "should destroy spot" do
    assert_difference('Spot.count', -1) do
      delete spot_url(@spot), as: :json
    end

    assert_response 204
  end
end
