require "application_system_test_case"

class AboutmesTest < ApplicationSystemTestCase
  setup do
    @aboutme = aboutmes(:one)
  end

  test "visiting the index" do
    visit aboutmes_url
    assert_selector "h1", text: "Aboutmes"
  end

  test "creating a Aboutme" do
    visit aboutmes_url
    click_on "New Aboutme"

    fill_in "Name", with: @aboutme.Name
    fill_in "Bio", with: @aboutme.bio
    fill_in "Creationdateandtime", with: @aboutme.creationdateandtime
    click_on "Create Aboutme"

    assert_text "Aboutme was successfully created"
    click_on "Back"
  end

  test "updating a Aboutme" do
    visit aboutmes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @aboutme.Name
    fill_in "Bio", with: @aboutme.bio
    fill_in "Creationdateandtime", with: @aboutme.creationdateandtime
    click_on "Update Aboutme"

    assert_text "Aboutme was successfully updated"
    click_on "Back"
  end

  test "destroying a Aboutme" do
    visit aboutmes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aboutme was successfully destroyed"
  end
end
