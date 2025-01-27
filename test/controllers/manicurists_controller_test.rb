require "test_helper"

class ManicuristsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manicurist = manicurists(:one)
  end

  test "should get index" do
    get manicurists_url
    assert_response :success
  end

  test "should get new" do
    get new_manicurist_url
    assert_response :success
  end

  test "should create manicurist" do
    assert_difference("Manicurist.count") do
      post manicurists_url, params: { manicurist: { experience: @manicurist.experience, first_name: @manicurist.first_name, last_name: @manicurist.last_name, phone: @manicurist.phone, user_id: @manicurist.user_id } }
    end

    assert_redirected_to manicurist_url(Manicurist.last)
  end

  test "should show manicurist" do
    get manicurist_url(@manicurist)
    assert_response :success
  end

  test "should get edit" do
    get edit_manicurist_url(@manicurist)
    assert_response :success
  end

  test "should update manicurist" do
    patch manicurist_url(@manicurist), params: { manicurist: { experience: @manicurist.experience, first_name: @manicurist.first_name, last_name: @manicurist.last_name, phone: @manicurist.phone, user_id: @manicurist.user_id } }
    assert_redirected_to manicurist_url(@manicurist)
  end

  test "should destroy manicurist" do
    assert_difference("Manicurist.count", -1) do
      delete manicurist_url(@manicurist)
    end

    assert_redirected_to manicurists_url
  end
end
