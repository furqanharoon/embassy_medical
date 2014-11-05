require 'test_helper'

class SendersControllerTest < ActionController::TestCase
  test "should get send_sms" do
    get :send_sms
    assert_response :success
  end

  test "should get send_mail" do
    get :send_mail
    assert_response :success
  end

end
