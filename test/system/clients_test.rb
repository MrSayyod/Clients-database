require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Contract", with: @client.contract
    fill_in "Duration", with: @client.duration
    fill_in "Name", with: @client.name
    fill_in "Paid amount", with: @client.paid_amount
    fill_in "Pay date", with: @client.pay_date
    fill_in "Phone model", with: @client.phone_model
    fill_in "Phone number", with: @client.phone_number
    fill_in "Remaining amount", with: @client.remaining_amount
    fill_in "Status", with: @client.status
    fill_in "Workplace", with: @client.workplace
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Contract", with: @client.contract
    fill_in "Duration", with: @client.duration
    fill_in "Name", with: @client.name
    fill_in "Paid amount", with: @client.paid_amount
    fill_in "Pay date", with: @client.pay_date
    fill_in "Phone model", with: @client.phone_model
    fill_in "Phone number", with: @client.phone_number
    fill_in "Remaining amount", with: @client.remaining_amount
    fill_in "Status", with: @client.status
    fill_in "Workplace", with: @client.workplace
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
