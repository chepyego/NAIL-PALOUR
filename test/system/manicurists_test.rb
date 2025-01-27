require "application_system_test_case"

class ManicuristsTest < ApplicationSystemTestCase
  setup do
    @manicurist = manicurists(:one)
  end

  test "visiting the index" do
    visit manicurists_url
    assert_selector "h1", text: "Manicurists"
  end

  test "should create manicurist" do
    visit manicurists_url
    click_on "New manicurist"

    fill_in "Experience", with: @manicurist.experience
    fill_in "First name", with: @manicurist.first_name
    fill_in "Last name", with: @manicurist.last_name
    fill_in "Phone", with: @manicurist.phone
    fill_in "User", with: @manicurist.user_id
    click_on "Create Manicurist"

    assert_text "Manicurist was successfully created"
    click_on "Back"
  end

  test "should update Manicurist" do
    visit manicurist_url(@manicurist)
    click_on "Edit this manicurist", match: :first

    fill_in "Experience", with: @manicurist.experience
    fill_in "First name", with: @manicurist.first_name
    fill_in "Last name", with: @manicurist.last_name
    fill_in "Phone", with: @manicurist.phone
    fill_in "User", with: @manicurist.user_id
    click_on "Update Manicurist"

    assert_text "Manicurist was successfully updated"
    click_on "Back"
  end

  test "should destroy Manicurist" do
    visit manicurist_url(@manicurist)
    click_on "Destroy this manicurist", match: :first

    assert_text "Manicurist was successfully destroyed"
  end
end
