require "application_system_test_case"

class FlatsControllersTest < ApplicationSystemTestCase
  setup do
    @flats_controller = flats_controllers(:one)
  end

  test "visiting the index" do
    visit flats_controllers_url
    assert_selector "h1", text: "Flats controllers"
  end

  test "should create flats controller" do
    visit flats_controllers_url
    click_on "New flats controller"

    click_on "Create Flats controller"

    assert_text "Flats controller was successfully created"
    click_on "Back"
  end

  test "should update Flats controller" do
    visit flats_controller_url(@flats_controller)
    click_on "Edit this flats controller", match: :first

    click_on "Update Flats controller"

    assert_text "Flats controller was successfully updated"
    click_on "Back"
  end

  test "should destroy Flats controller" do
    visit flats_controller_url(@flats_controller)
    click_on "Destroy this flats controller", match: :first

    assert_text "Flats controller was successfully destroyed"
  end
end
