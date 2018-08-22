require "application_system_test_case"

class KingsTest < ApplicationSystemTestCase
  setup do
    @king = kings(:one)
  end

  test "visiting the index" do
    visit kings_url
    assert_selector "h1", text: "Kings"
  end

  test "creating a King" do
    visit kings_url
    click_on "New King"

    fill_in "Description", with: @king.description
    click_on "Create King"

    assert_text "King was successfully created"
    click_on "Back"
  end

  test "updating a King" do
    visit kings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @king.description
    click_on "Update King"

    assert_text "King was successfully updated"
    click_on "Back"
  end

  test "destroying a King" do
    visit kings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "King was successfully destroyed"
  end
end
