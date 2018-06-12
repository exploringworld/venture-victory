require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Game", with: @order.game_id
    fill_in "Invested Amount", with: @order.invested_amount
    fill_in "Learning", with: @order.learning
    fill_in "Odds Type", with: @order.odds_type
    fill_in "Order Type", with: @order.order_type
    fill_in "Refund Amount", with: @order.refund_amount
    fill_in "Result Type", with: @order.result_type
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Game", with: @order.game_id
    fill_in "Invested Amount", with: @order.invested_amount
    fill_in "Learning", with: @order.learning
    fill_in "Odds Type", with: @order.odds_type
    fill_in "Order Type", with: @order.order_type
    fill_in "Refund Amount", with: @order.refund_amount
    fill_in "Result Type", with: @order.result_type
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
