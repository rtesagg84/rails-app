require "application_system_test_case"

class ItemPricesTest < ApplicationSystemTestCase
  setup do
    @item_price = item_prices(:one)
  end

  test "visiting the index" do
    visit item_prices_url
    assert_selector "h1", text: "Item Prices"
  end

  test "creating a Item price" do
    visit item_prices_url
    click_on "New Item Price"

    fill_in "Item", with: @item_price.item_id
    fill_in "Price", with: @item_price.price
    fill_in "Store", with: @item_price.store_id
    click_on "Create Item price"

    assert_text "Item price was successfully created"
    click_on "Back"
  end

  test "updating a Item price" do
    visit item_prices_url
    click_on "Edit", match: :first

    fill_in "Item", with: @item_price.item_id
    fill_in "Price", with: @item_price.price
    fill_in "Store", with: @item_price.store_id
    click_on "Update Item price"

    assert_text "Item price was successfully updated"
    click_on "Back"
  end

  test "destroying a Item price" do
    visit item_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item price was successfully destroyed"
  end
end
