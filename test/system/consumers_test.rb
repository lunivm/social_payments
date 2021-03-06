require "application_system_test_case"

class ConsumersTest < ApplicationSystemTestCase
  setup do
    @consumer = consumers(:one)
  end

  test "visiting the index" do
    visit consumers_url
    assert_selector "h1", text: "Consumers"
  end

  test "should create consumer" do
    visit consumers_url
    click_on "New consumer"

    fill_in "Apartment", with: @consumer.apartment
    fill_in "Full name", with: @consumer.full_name
    fill_in "House", with: @consumer.house
    fill_in "House section", with: @consumer.house_section
    fill_in "Identity code", with: @consumer.identity_code
    fill_in "Passport number", with: @consumer.passport_number
    click_on "Create Consumer"

    assert_text "Consumer was successfully created"
    click_on "Back"
  end

  test "should update Consumer" do
    visit consumer_url(@consumer)
    click_on "Edit this consumer", match: :first

    fill_in "Apartment", with: @consumer.apartment
    fill_in "Full name", with: @consumer.full_name
    fill_in "House", with: @consumer.house
    fill_in "House section", with: @consumer.house_section
    fill_in "Identity code", with: @consumer.identity_code
    fill_in "Passport number", with: @consumer.passport_number
    click_on "Update Consumer"

    assert_text "Consumer was successfully updated"
    click_on "Back"
  end

  test "should destroy Consumer" do
    visit consumer_url(@consumer)
    click_on "Destroy this consumer", match: :first

    assert_text "Consumer was successfully destroyed"
  end
end
