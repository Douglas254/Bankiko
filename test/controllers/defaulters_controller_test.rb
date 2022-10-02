require "test_helper"

class DefaultersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @defaulter = defaulters(:one)
  end

  test "should get index" do
    get defaulters_url, as: :json
    assert_response :success
  end

  test "should create defaulter" do
    assert_difference("Defaulter.count") do
      post defaulters_url, params: { defaulter: { amount: @defaulter.amount, name: @defaulter.name } }, as: :json
    end

    assert_response :created
  end

  test "should show defaulter" do
    get defaulter_url(@defaulter), as: :json
    assert_response :success
  end

  test "should update defaulter" do
    patch defaulter_url(@defaulter), params: { defaulter: { amount: @defaulter.amount, name: @defaulter.name } }, as: :json
    assert_response :success
  end

  test "should destroy defaulter" do
    assert_difference("Defaulter.count", -1) do
      delete defaulter_url(@defaulter), as: :json
    end

    assert_response :no_content
  end
end
