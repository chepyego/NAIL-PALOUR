require "application_system_test_case"

class SchedulesTest < ApplicationSystemTestCase
  setup do
    @schedule = schedules(:one)
  end

  test "visiting the index" do
    visit schedules_url
    assert_selector "h1", text: "Schedules"
  end

  test "should create schedule" do
    visit schedules_url
    click_on "New schedule"

    fill_in "End", with: @schedule.end
    fill_in "Manicurist", with: @schedule.manicurist_id
    fill_in "Start", with: @schedule.start
    fill_in "Title", with: @schedule.title
    click_on "Create Schedule"

    assert_text "Schedule was successfully created"
    click_on "Back"
  end

  test "should update Schedule" do
    visit schedule_url(@schedule)
    click_on "Edit this schedule", match: :first

    fill_in "End", with: @schedule.end.to_s
    fill_in "Manicurist", with: @schedule.manicurist_id
    fill_in "Start", with: @schedule.start.to_s
    fill_in "Title", with: @schedule.title
    click_on "Update Schedule"

    assert_text "Schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Schedule" do
    visit schedule_url(@schedule)
    click_on "Destroy this schedule", match: :first

    assert_text "Schedule was successfully destroyed"
  end
end
