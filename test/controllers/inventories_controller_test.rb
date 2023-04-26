require 'test_helper'

class InventoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inventories_url
    assert_response :success
  end

  test "should create inventory" do
    assert_difference('Inventory.count') do
      post inventories_url, params: { inventory: { name: "New Inventory" } }
    end

    assert_response :created
  end

  test "should show inventory" do
    inventory = Inventory.create(name: "Test Inventory")

    get inventory_url(inventory)
    assert_response :success
  end

  test "should update inventory" do
    inventory = Inventory.create(name: "Test Inventory")

    patch inventory_url(inventory), params: { inventory: { name: "Updated Inventory" } }
    assert_response :success
    assert_equal "Updated Inventory", inventory.reload.name
  end

  test "should destroy inventory" do
    inventory = Inventory.create(name: "Test Inventory")

    assert_difference('Inventory.count', -1) do
      delete inventory_url(inventory)
    end

    assert_response :no_content
  end
end
