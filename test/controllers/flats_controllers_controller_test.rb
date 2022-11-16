require "test_helper"

class FlatsControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flats_controller = flats_controllers(:one)
  end

  test "should get index" do
    get flats_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_flats_controller_url
    assert_response :success
  end

  test "should create flats_controller" do
    assert_difference("FlatsController.count") do
      post flats_controllers_url, params: { flats_controller: {  } }
    end

    assert_redirected_to flats_controller_url(FlatsController.last)
  end

  test "should show flats_controller" do
    get flats_controller_url(@flats_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_flats_controller_url(@flats_controller)
    assert_response :success
  end

  test "should update flats_controller" do
    patch flats_controller_url(@flats_controller), params: { flats_controller: {  } }
    assert_redirected_to flats_controller_url(@flats_controller)
  end

  test "should destroy flats_controller" do
    assert_difference("FlatsController.count", -1) do
      delete flats_controller_url(@flats_controller)
    end

    assert_redirected_to flats_controllers_url
  end
end
