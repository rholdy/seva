require "test_helper"

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @static_page = static_pages(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:static_pages)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('StaticPage.count') do
      post :create, static_page: {  }
    end

    assert_redirected_to static_page_path(assigns(:static_page))
  end

  def test_show
    get :show, id: @static_page
    assert_response :success
  end

  def test_edit
    get :edit, id: @static_page
    assert_response :success
  end

  def test_update
    put :update, id: @static_page, static_page: {  }
    assert_redirected_to static_page_path(assigns(:static_page))
  end

  def test_destroy
    assert_difference('StaticPage.count', -1) do
      delete :destroy, id: @static_page
    end

    assert_redirected_to static_pages_path
  end
end
