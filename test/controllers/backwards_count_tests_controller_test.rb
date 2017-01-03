require 'test_helper'

class BackwardsCountTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backwards_count_test = backwards_count_tests(:one)
  end

  test "should get index" do
    get backwards_count_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_backwards_count_test_url
    assert_response :success
  end

  test "should create backwards_count_test" do
    assert_difference('BackwardsCountTest.count') do
      post backwards_count_tests_url, params: { backwards_count_test: { accuracy_rating: @backwards_count_test.accuracy_rating } }
    end

    assert_redirected_to backwards_count_test_url(BackwardsCountTest.last)
  end

  test "should show backwards_count_test" do
    get backwards_count_test_url(@backwards_count_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_backwards_count_test_url(@backwards_count_test)
    assert_response :success
  end

  test "should update backwards_count_test" do
    patch backwards_count_test_url(@backwards_count_test), params: { backwards_count_test: { accuracy_rating: @backwards_count_test.accuracy_rating } }
    assert_redirected_to backwards_count_test_url(@backwards_count_test)
  end

  test "should destroy backwards_count_test" do
    assert_difference('BackwardsCountTest.count', -1) do
      delete backwards_count_test_url(@backwards_count_test)
    end

    assert_redirected_to backwards_count_tests_url
  end
end
