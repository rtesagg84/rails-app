require 'test_helper'

class ItemPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_price = item_prices(:one)
  end

  test "should get index" do
    get item_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_item_price_url
    assert_response :success
  end

  test "should create item_price" do
    assert_difference('ItemPrice.count') do
      post item_prices_url, params: { item_price: { item_id: @item_price.item_id, price: @item_price.price, store_id: @item_price.store_id } }
    end

    assert_redirected_to item_price_url(ItemPrice.last)
  end

  test "should show item_price" do
    get item_price_url(@item_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_price_url(@item_price)
    assert_response :success
  end

  test "should update item_price" do
    patch item_price_url(@item_price), params: { item_price: { item_id: @item_price.item_id, price: @item_price.price, store_id: @item_price.store_id } }
    assert_redirected_to item_price_url(@item_price)
  end

  test "should destroy item_price" do
    assert_difference('ItemPrice.count', -1) do
      delete item_price_url(@item_price)
    end

    assert_redirected_to item_prices_url
  end
end
