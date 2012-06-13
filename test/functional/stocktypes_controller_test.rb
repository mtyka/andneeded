require 'test_helper'

class StocktypesControllerTest < ActionController::TestCase
  setup do
    @stocktype = stocktypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stocktypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stocktype" do
    assert_difference('Stocktype.count') do
      post :create, :stocktype => @stocktype.attributes
    end

    assert_redirected_to stocktype_path(assigns(:stocktype))
  end

  test "should show stocktype" do
    get :show, :id => @stocktype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @stocktype.to_param
    assert_response :success
  end

  test "should update stocktype" do
    put :update, :id => @stocktype.to_param, :stocktype => @stocktype.attributes
    assert_redirected_to stocktype_path(assigns(:stocktype))
  end

  test "should destroy stocktype" do
    assert_difference('Stocktype.count', -1) do
      delete :destroy, :id => @stocktype.to_param
    end

    assert_redirected_to stocktypes_path
  end
end
