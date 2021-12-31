require "test_helper"

class ConsumerAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consumer_account = consumer_accounts(:one)
  end

  test "should get index" do
    get consumer_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_consumer_account_url
    assert_response :success
  end

  test "should create consumer_account" do
    assert_difference("ConsumerAccount.count") do
      post consumer_accounts_url, params: { consumer_account: { account: @consumer_account.account, bank_id: @consumer_account.bank_id, consumer_id: @consumer_account.consumer_id } }
    end

    assert_redirected_to consumer_account_url(ConsumerAccount.last)
  end

  test "should show consumer_account" do
    get consumer_account_url(@consumer_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_consumer_account_url(@consumer_account)
    assert_response :success
  end

  test "should update consumer_account" do
    patch consumer_account_url(@consumer_account), params: { consumer_account: { account: @consumer_account.account, bank_id: @consumer_account.bank_id, consumer_id: @consumer_account.consumer_id } }
    assert_redirected_to consumer_account_url(@consumer_account)
  end

  test "should destroy consumer_account" do
    assert_difference("ConsumerAccount.count", -1) do
      delete consumer_account_url(@consumer_account)
    end

    assert_redirected_to consumer_accounts_url
  end
end
