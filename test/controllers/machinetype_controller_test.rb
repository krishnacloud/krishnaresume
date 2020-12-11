require 'test_helper'

class MachinetypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get machinetype_index_url
    assert_response :success
  end

end
