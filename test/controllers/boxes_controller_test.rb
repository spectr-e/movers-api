require 'test_helper'

class BoxesControllerTest < ActionController::TestCase
  setup do
    @box = boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create box" do
    assert_difference('Box.count') do
      post :create, params: { box: { range: @box.range, cost_to_move_boxes: @box.cost_to_move_boxes } }
    end

    assert_redirected_to boxes_path
  end

  test "should show box" do
    get :show, params: { id: @box }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @box }
    assert_response :success
  end

  test "should update box" do
    patch :update, params: { id: @box, box: { range: @box.range, cost_to_move_boxes: @box.cost_to_move_boxes } }
    assert_redirected_to boxes_path
  end

  test "should destroy box" do
    assert_difference('Box.count', -1) do
      delete :destroy, params: { id: @box }
    end

    assert_redirected_to boxes_path
  end
end
