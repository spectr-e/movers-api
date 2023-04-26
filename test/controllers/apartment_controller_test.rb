require 'test_helper'

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment = apartments(:one) # assuming there is a fixture file for apartments
  end

  test "should get index" do
    get apartments_url
    assert_response :success
  end

  test "should show apartment" do
    get apartment_url(@apartment)
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post apartments_url, params: { apartment: { size: @apartment.size, description: @apartment.description, labour: @apartment.labour, labour_cost: @apartment.labour_cost } }
    end

    assert_response :created
  end

  test "should update apartment" do
    patch apartment_url(@apartment), params: { apartment: { size: @apartment.size, description: @apartment.description, labour: @apartment.labour, labour_cost: @apartment.labour_cost } }
    assert_response :success
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete apartment_url(@apartment)
    end

    assert_response :no_content
  end
end
