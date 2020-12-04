require "application_system_test_case"

class GrokkingsTest < ApplicationSystemTestCase
  setup do
    @grokking = grokkings(:one)
  end

  test "visiting the index" do
    visit grokkings_url
    assert_selector "h1", text: "Grokkings"
  end

  test "creating a Grokking" do
    visit grokkings_url
    click_on "New Grokking"

    fill_in "Article", with: @grokking.article
    fill_in "Creationdate", with: @grokking.creationdate
    fill_in "Topic", with: @grokking.topic
    click_on "Create Grokking"

    assert_text "Grokking was successfully created"
    click_on "Back"
  end

  test "updating a Grokking" do
    visit grokkings_url
    click_on "Edit", match: :first

    fill_in "Article", with: @grokking.article
    fill_in "Creationdate", with: @grokking.creationdate
    fill_in "Topic", with: @grokking.topic
    click_on "Update Grokking"

    assert_text "Grokking was successfully updated"
    click_on "Back"
  end

  test "destroying a Grokking" do
    visit grokkings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grokking was successfully destroyed"
  end
end
