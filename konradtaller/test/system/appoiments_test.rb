require "application_system_test_case"

class AppoimentsTest < ApplicationSystemTestCase
  setup do
    @appoiment = appoiments(:one)
  end

  test "visiting the index" do
    visit appoiments_url
    assert_selector "h1", text: "Appoiments"
  end

  test "creating a Appoiment" do
    visit appoiments_url
    click_on "New Appoiment"

    fill_in "Begindate", with: @appoiment.begindate
    fill_in "Comment", with: @appoiment.comment
    fill_in "Consulting room", with: @appoiment.consulting_room_id
    fill_in "Doctor", with: @appoiment.doctor_id
    fill_in "Enddate", with: @appoiment.enddate
    fill_in "Patient", with: @appoiment.patient_id
    click_on "Create Appoiment"

    assert_text "Appoiment was successfully created"
    click_on "Back"
  end

  test "updating a Appoiment" do
    visit appoiments_url
    click_on "Edit", match: :first

    fill_in "Begindate", with: @appoiment.begindate
    fill_in "Comment", with: @appoiment.comment
    fill_in "Consulting room", with: @appoiment.consulting_room_id
    fill_in "Doctor", with: @appoiment.doctor_id
    fill_in "Enddate", with: @appoiment.enddate
    fill_in "Patient", with: @appoiment.patient_id
    click_on "Update Appoiment"

    assert_text "Appoiment was successfully updated"
    click_on "Back"
  end

  test "destroying a Appoiment" do
    visit appoiments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appoiment was successfully destroyed"
  end
end
