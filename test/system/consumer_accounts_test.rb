require "application_system_test_case"

class ConsumerAccountsTest < ApplicationSystemTestCase
  setup do
    @consumer_account = consumer_accounts(:one)
  end

  test "visiting the index" do
    visit consumer_accounts_url
    assert_selector "h1", text: "Consumer accounts"
  end

  test "should create consumer account" do
    visit consumer_accounts_url
    click_on "New consumer account"

    fill_in "Account", with: @consumer_account.account
    fill_in "Bank", with: @consumer_account.bank_id
    fill_in "Consumer", with: @consumer_account.consumer_id
    click_on "Create Consumer account"

    assert_text "Consumer account was successfully created"
    click_on "Back"
  end

  test "should update Consumer account" do
    visit consumer_account_url(@consumer_account)
    click_on "Edit this consumer account", match: :first

    fill_in "Account", with: @consumer_account.account
    fill_in "Bank", with: @consumer_account.bank_id
    fill_in "Consumer", with: @consumer_account.consumer_id
    click_on "Update Consumer account"

    assert_text "Consumer account was successfully updated"
    click_on "Back"
  end

  test "should destroy Consumer account" do
    visit consumer_account_url(@consumer_account)
    click_on "Destroy this consumer account", match: :first

    assert_text "Consumer account was successfully destroyed"
  end
end
