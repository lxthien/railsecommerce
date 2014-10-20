require 'test_helper'

class Admin::NewscatalogsControllerTest < ActionController::TestCase
  setup do
    @admin_newscatalog = admin_newscatalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_newscatalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_newscatalog" do
    assert_difference('Admin::Newscatalog.count') do
      post :create, admin_newscatalog: { content: @admin_newscatalog.content, description: @admin_newscatalog.description, name: @admin_newscatalog.name, page_description: @admin_newscatalog.page_description, page_keyword: @admin_newscatalog.page_keyword, page_title: @admin_newscatalog.page_title, parentcat_id: @admin_newscatalog.parentcat_id, position: @admin_newscatalog.position, url: @admin_newscatalog.url }
    end

    assert_redirected_to admin_newscatalog_path(assigns(:admin_newscatalog))
  end

  test "should show admin_newscatalog" do
    get :show, id: @admin_newscatalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_newscatalog
    assert_response :success
  end

  test "should update admin_newscatalog" do
    patch :update, id: @admin_newscatalog, admin_newscatalog: { content: @admin_newscatalog.content, description: @admin_newscatalog.description, name: @admin_newscatalog.name, page_description: @admin_newscatalog.page_description, page_keyword: @admin_newscatalog.page_keyword, page_title: @admin_newscatalog.page_title, parentcat_id: @admin_newscatalog.parentcat_id, position: @admin_newscatalog.position, url: @admin_newscatalog.url }
    assert_redirected_to admin_newscatalog_path(assigns(:admin_newscatalog))
  end

  test "should destroy admin_newscatalog" do
    assert_difference('Admin::Newscatalog.count', -1) do
      delete :destroy, id: @admin_newscatalog
    end

    assert_redirected_to admin_newscatalogs_path
  end
end
