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
      post brains_url, params: { brain: { BrandName: @brain.BrandName, CDPHId: @brain.CDPHId, CSF: @brain.CSF, CSFId: @brain.CSFId, CasId: @brain.CasId, CasNumber: @brain.CasNumber, ChemicalCount: @brain.ChemicalCount, ChemicalCreatedAt: @brain.ChemicalCreatedAt, ChemicalDateRemoved: @brain.ChemicalDateRemoved, ChemicalId: @brain.ChemicalId, ChemicalName: @brain.ChemicalName, ChemicalUpdatedAt: @brain.ChemicalUpdatedAt, CompanyId: @brain.CompanyId, CompanyName: @brain.CompanyName, DiscontinuedDate: @brain.DiscontinuedDate, InitialDateReported: @brain.InitialDateReported, MostRecentDateReported: @brain.MostRecentDateReported, PrimaryCategory: @brain.PrimaryCategory, PrimaryCategoryId: @brain.PrimaryCategoryId, ProductName: @brain.ProductName, SubCategory: @brain.SubCategory, SubCategoryId: @brain.SubCategoryId } }, as: :json
    end

    assert_response 201
  end

  test "should show brain" do
    get brain_url(@brain), as: :json
    assert_response :success
  end

  test "should update brain" do
    patch brain_url(@brain), params: { brain: { BrandName: @brain.BrandName, CDPHId: @brain.CDPHId, CSF: @brain.CSF, CSFId: @brain.CSFId, CasId: @brain.CasId, CasNumber: @brain.CasNumber, ChemicalCount: @brain.ChemicalCount, ChemicalCreatedAt: @brain.ChemicalCreatedAt, ChemicalDateRemoved: @brain.ChemicalDateRemoved, ChemicalId: @brain.ChemicalId, ChemicalName: @brain.ChemicalName, ChemicalUpdatedAt: @brain.ChemicalUpdatedAt, CompanyId: @brain.CompanyId, CompanyName: @brain.CompanyName, DiscontinuedDate: @brain.DiscontinuedDate, InitialDateReported: @brain.InitialDateReported, MostRecentDateReported: @brain.MostRecentDateReported, PrimaryCategory: @brain.PrimaryCategory, PrimaryCategoryId: @brain.PrimaryCategoryId, ProductName: @brain.ProductName, SubCategory: @brain.SubCategory, SubCategoryId: @brain.SubCategoryId } }, as: :json
    assert_response 200
  end

  test "should destroy brain" do
    assert_difference('Brain.count', -1) do
      delete brain_url(@brain), as: :json
    end

    assert_response 204
  end
end
