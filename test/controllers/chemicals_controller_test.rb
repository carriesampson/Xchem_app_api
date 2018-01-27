require 'test_helper'

class ChemicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chemical = chemicals(:one)
  end

  test "should get index" do
    get chemicals_url, as: :json
    assert_response :success
  end

  test "should create chemical" do
    assert_difference('Chemical.count') do
      post chemicals_url, params: { chemical: { ChemicalName: @chemical.ChemicalName } }, as: :json
    end

    assert_response 201
  end

  test "should show chemical" do
    get chemical_url(@chemical), as: :json
    assert_response :success
  end

  test "should update chemical" do
    patch chemical_url(@chemical), params: { chemical: { ChemicalName: @chemical.ChemicalName } }, as: :json
    assert_response 200
  end

  test "should destroy chemical" do
    assert_difference('Chemical.count', -1) do
      delete chemical_url(@chemical), as: :json
    end

    assert_response 204
  end
end
