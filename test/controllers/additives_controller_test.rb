require 'test_helper'

class AdditivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @additive = additives(:one)
  end

  test "should get index" do
    get additives_url, as: :json
    assert_response :success
  end

  test "should create additive" do
    assert_difference('Additive.count') do
      post additives_url, params: { additive: { CSF: @additive.CSF } }, as: :json
    end

    assert_response 201
  end

  test "should show additive" do
    get additive_url(@additive), as: :json
    assert_response :success
  end

  test "should update additive" do
    patch additive_url(@additive), params: { additive: { CSF: @additive.CSF } }, as: :json
    assert_response 200
  end

  test "should destroy additive" do
    assert_difference('Additive.count', -1) do
      delete additive_url(@additive), as: :json
    end

    assert_response 204
  end
end
