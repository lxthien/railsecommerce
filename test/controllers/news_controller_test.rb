require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news" do
    assert_difference('News.count') do
      post :create, news: { active: @news.active, content: @news.content, description: @news.description, images: @news.images, isComment: @news.isComment, isHot: @news.isHot, newscatalog_id: @news.newscatalog_id, page_description: @news.page_description, page_keyword: @news.page_keyword, page_title: @news.page_title, position: @news.position, recycle: @news.recycle, tag: @news.tag, title: @news.title, url: @news.url }
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test "should show news" do
    get :show, id: @news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news
    assert_response :success
  end

  test "should update news" do
    patch :update, id: @news, news: { active: @news.active, content: @news.content, description: @news.description, images: @news.images, isComment: @news.isComment, isHot: @news.isHot, newscatalog_id: @news.newscatalog_id, page_description: @news.page_description, page_keyword: @news.page_keyword, page_title: @news.page_title, position: @news.position, recycle: @news.recycle, tag: @news.tag, title: @news.title, url: @news.url }
    assert_redirected_to news_path(assigns(:news))
  end

  test "should destroy news" do
    assert_difference('News.count', -1) do
      delete :destroy, id: @news
    end

    assert_redirected_to news_index_path
  end
end
