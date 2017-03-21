require 'test_helper'

class WordControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get word_new_url
    assert_response :success
  end

end
