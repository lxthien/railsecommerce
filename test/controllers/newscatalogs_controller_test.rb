require 'test_helper'

class NewscatalogsControllerTest < ActionController::TestCase
  setup do
    @newscatalog = newscatalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newscatalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newscatalog" do
    assert_difference('Newscatalog.count') do
      post :create, newscatalog: { content: @newscatalog.content, description: @newscatalog.description, name: @newscatalog.name, page_description: @newscatalog.page_description, page_keyword: @newscatalog.page_keyword, parentcat_id: @newscatalog.parentcat_id, position: @newscatalog.position }
    end

    assert_redirected_to newscatalog_path(assigns(:newscatalog))
  end

  test "should show newscatalog" do
    get :show, id: @newscatalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newscatalog
    assert_response :success
  end

  test "should update newscatalog" do
    patch :update, id: @newscatalog, newscatalog: { content: @newscatalog.content, description: @newscatalog.description, name: @newscatalog.name, page_description: @newscatalog.page_description, page_keyword: @newscatalog.page_keyword, parentcat_id: @newscatalog.parentcat_id, position: @newscatalog.position }
    assert_redirected_to newscatalog_path(assigns(:newscatalog))
  end

  test "should destroy newscatalog" do
    assert_difference('Newscatalog.count', -1) do
      delete :destroy, id: @newscatalog
    end

    assert_redirected_to newscatalogs_path
  end
end
