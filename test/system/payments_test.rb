require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "should create payment" do
    visit payments_url
    click_on "New payment"

    fill_in "Code kek", with: @payment.code_kek
    fill_in "Code kfk", with: @payment.code_kfk
    fill_in "Date", with: @payment.date
    fill_in "Description", with: @payment.description
    check "Paid" if @payment.paid
    fill_in "Report number", with: @payment.report_number
    fill_in "Sum", with: @payment.sum
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "should update Payment" do
    visit payment_url(@payment)
    click_on "Edit this payment", match: :first

    fill_in "Code kek", with: @payment.code_kek
    fill_in "Code kfk", with: @payment.code_kfk
    fill_in "Date", with: @payment.date
    fill_in "Description", with: @payment.description
    check "Paid" if @payment.paid
    fill_in "Report number", with: @payment.report_number
    fill_in "Sum", with: @payment.sum
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment" do
    visit payment_url(@payment)
    click_on "Destroy this payment", match: :first

    assert_text "Payment was successfully destroyed"
  end
end
