require 'test_helper'

class ExplorersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @explorer = explorers(:one)
  end

  test "should get index" do
    get explorers_url, as: :json
    assert_response :success
  end

  test "should create explorer" do
    assert_difference('Explorer.count') do
      post explorers_url, params: { explorer: { date: @explorer.date, email: @explorer.email, lastname: @explorer.lastname, name: @explorer.name, phone: @explorer.phone, seats: @explorer.seats, status: @explorer.status, trip_id: @explorer.trip_id } }, as: :json
    end

    assert_response 201
  end

  test "should show explorer" do
    get explorer_url(@explorer), as: :json
    assert_response :success
  end

  test "should update explorer" do
    patch explorer_url(@explorer), params: { explorer: { date: @explorer.date, email: @explorer.email, lastname: @explorer.lastname, name: @explorer.name, phone: @explorer.phone, seats: @explorer.seats, status: @explorer.status, trip_id: @explorer.trip_id } }, as: :json
    assert_response 200
  end

  test "should destroy explorer" do
    assert_difference('Explorer.count', -1) do
      delete explorer_url(@explorer), as: :json
    end

    assert_response 204
  end
end
