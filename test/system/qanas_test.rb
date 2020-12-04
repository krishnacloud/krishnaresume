require "application_system_test_case"

class QanasTest < ApplicationSystemTestCase
  setup do
    @qana = qanas(:one)
  end

  test "visiting the index" do
    visit qanas_url
    assert_selector "h1", text: "Qanas"
  end

  test "creating a Qana" do
    visit qanas_url
    click_on "New Qana"

    fill_in "Answer", with: @qana.answer
    fill_in "Createddate", with: @qana.createddate
    fill_in "Question", with: @qana.question
    fill_in "Topic", with: @qana.topic
    fill_in "Version", with: @qana.version
    click_on "Create Qana"

    assert_text "Qana was successfully created"
    click_on "Back"
  end

  test "updating a Qana" do
    visit qanas_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @qana.answer
    fill_in "Createddate", with: @qana.createddate
    fill_in "Question", with: @qana.question
    fill_in "Topic", with: @qana.topic
    fill_in "Version", with: @qana.version
    click_on "Update Qana"

    assert_text "Qana was successfully updated"
    click_on "Back"
  end

  test "destroying a Qana" do
    visit qanas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qana was successfully destroyed"
  end
end
