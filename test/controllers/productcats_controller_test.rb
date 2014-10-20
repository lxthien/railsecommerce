require 'test_helper'

class ProductcatsControllerTest < ActionController::TestCase
  setup do
    @productcat = productcats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productcats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productcat" do
    assert_difference('Productcat.count') do
      post :create, productcat: { description: @productcat.description, images: @productcat.images, isHot: @productcat.isHot, name: @productcat.name, page_description: @productcat.page_description, page_keyword: @productcat.page_keyword, parentcat_id: @productcat.parentcat_id, position: @productcat.position, url: @productcat.url }
    end

    assert_redirected_to productcat_path(assigns(:productcat))
  end

  test "should show productcat" do
    get :show, id: @productcat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productcat
    assert_response :success
  end

  test "should update productcat" do
    patch :update, id: @productcat, productcat: { description: @productcat.description, images: @productcat.images, isHot: @productcat.isHot, name: @productcat.name, page_description: @productcat.page_description, page_keyword: @productcat.page_keyword, parentcat_id: @productcat.parentcat_id, position: @productcat.position, url: @productcat.url }
    assert_redirected_to productcat_path(assigns(:productcat))
  end

  test "should destroy productcat" do
    assert_difference('Productcat.count', -1) do
      delete :destroy, id: @productcat
    end

    assert_redirected_to productcats_path
  end
end
