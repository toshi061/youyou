require 'test_helper'

class CrosswordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crossword = crosswords(:one)
  end

  test "should get index" do
    get crosswords_url
    assert_response :success
  end

  test "should get new" do
    get new_crossword_url
    assert_response :success
  end

  test "should create crossword" do
    assert_difference('Crossword.count') do
      post crosswords_url, params: { crossword: { name: @crossword.name } }
    end

    assert_redirected_to crossword_url(Crossword.last)
  end

  test "should show crossword" do
    get crossword_url(@crossword)
    assert_response :success
  end

  test "should get edit" do
    get edit_crossword_url(@crossword)
    assert_response :success
  end

  test "should update crossword" do
    patch crossword_url(@crossword), params: { crossword: { name: @crossword.name } }
    assert_redirected_to crossword_url(@crossword)
  end

  test "should destroy crossword" do
    assert_difference('Crossword.count', -1) do
      delete crossword_url(@crossword)
    end

    assert_redirected_to crosswords_url
  end
end
