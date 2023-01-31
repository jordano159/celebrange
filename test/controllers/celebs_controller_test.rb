require "test_helper"

class CelebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @celeb = celebs(:one)
  end

  test "should get index" do
    get celebs_url
    assert_response :success
  end

  test "should get new" do
    get new_celeb_url
    assert_response :success
  end

  test "should create celeb" do
    assert_difference("Celeb.count") do
      post celebs_url, params: { celeb: { game_id: @celeb.game_id, name: @celeb.name } }
    end

    assert_redirected_to celeb_url(Celeb.last)
  end

  test "should show celeb" do
    get celeb_url(@celeb)
    assert_response :success
  end

  test "should get edit" do
    get edit_celeb_url(@celeb)
    assert_response :success
  end

  test "should update celeb" do
    patch celeb_url(@celeb), params: { celeb: { game_id: @celeb.game_id, name: @celeb.name } }
    assert_redirected_to celeb_url(@celeb)
  end

  test "should destroy celeb" do
    assert_difference("Celeb.count", -1) do
      delete celeb_url(@celeb)
    end

    assert_redirected_to celebs_url
  end
end
