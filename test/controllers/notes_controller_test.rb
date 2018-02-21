require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get notes_title_url
    assert_response :success
  end

  test "should get body" do
    get notes_body_url
    assert_response :success
  end

  test "should get color" do
    get notes_color_url
    assert_response :success
  end

end
