require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success

    assert_select "#header", 1
    assert_select "#sidebar", 1
    assert_select "#sidebar a", 4
    assert_select "#main", 1
    assert_select "#main .list-group-item", 2
  end

end
