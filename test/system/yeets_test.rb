require "application_system_test_case"

class YeetsTest < ApplicationSystemTestCase
  setup do
    @yeet = yeets(:one)
  end

  test "visiting the index" do
    visit yeets_url
    assert_selector "h1", text: "Yeets"
  end

  test "creating a Yeet" do
    visit yeets_url
    click_on "New Yeet"

    fill_in "Yeet", with: @yeet.yeet
    click_on "Create Yeet"

    assert_text "Yeet was successfully created"
    click_on "Back"
  end

  test "updating a Yeet" do
    visit yeets_url
    click_on "Edit", match: :first

    fill_in "Yeet", with: @yeet.yeet
    click_on "Update Yeet"

    assert_text "Yeet was successfully updated"
    click_on "Back"
  end

  test "destroying a Yeet" do
    visit yeets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yeet was successfully destroyed"
  end
end
