require 'test_helper'

class BrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brain = brains(:one)
  end

  test "should get index" do
    get brains_url, as: :json
    assert_response :success
  end

  test "should create brain" do
    assert_difference('Brain.count') do
      post brains_url, params: { brain: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show brain" do
    get brain_url(@brain), as: :json
    assert_response :success
  end

  test "should update brain" do
    patch brain_url(@brain), params: { brain: {  } }, as: :json
    assert_response 200
  end

  test "should destroy brain" do
    assert_difference('Brain.count', -1) do
      delete brain_url(@brain), as: :json
    end

    assert_response 204
  end
end
