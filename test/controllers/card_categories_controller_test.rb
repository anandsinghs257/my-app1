require 'test_helper'

class CardCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card_category = card_categories(:one)
  end

  test "should get index" do
    get card_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_card_category_url
    assert_response :success
  end

  test "should create card_category" do
    assert_difference('CardCategory.count') do
      post card_categories_url, params: { card_category: {  } }
    end

    assert_redirected_to card_category_url(CardCategory.last)
  end

  test "should show card_category" do
    get card_category_url(@card_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_category_url(@card_category)
    assert_response :success
  end

  test "should update card_category" do
    patch card_category_url(@card_category), params: { card_category: {  } }
    assert_redirected_to card_category_url(@card_category)
  end

  test "should destroy card_category" do
    assert_difference('CardCategory.count', -1) do
      delete card_category_url(@card_category)
    end

    assert_redirected_to card_categories_url
  end
end
