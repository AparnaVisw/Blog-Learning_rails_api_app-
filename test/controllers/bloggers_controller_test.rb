require 'test_helper'

class BloggersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogger = bloggers(:one)
  end

  test "should get index" do
    get bloggers_url, as: :json
    assert_response :success
  end

  test "should create blogger" do
    assert_difference('Blogger.count') do
      post bloggers_url, params: { blogger: { gmail: @blogger.gmail, oauth_token: @blogger.oauth_token, password: @blogger.password } }, as: :json
    end

    assert_response 201
  end

  test "should show blogger" do
    get blogger_url(@blogger), as: :json
    assert_response :success
  end

  test "should update blogger" do
    patch blogger_url(@blogger), params: { blogger: { gmail: @blogger.gmail, oauth_token: @blogger.oauth_token, password: @blogger.password } }, as: :json
    assert_response 200
  end

  test "should destroy blogger" do
    assert_difference('Blogger.count', -1) do
      delete blogger_url(@blogger), as: :json
    end

    assert_response 204
  end
end
