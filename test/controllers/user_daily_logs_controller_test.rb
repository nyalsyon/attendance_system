require 'test_helper'

class UserDailyLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_daily_log = user_daily_logs(:one)
  end

  test "should get index" do
    get user_daily_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_daily_log_url
    assert_response :success
  end

  test "should create user_daily_log" do
    assert_difference('UserDailyLog.count') do
      post user_daily_logs_url, params: { user_daily_log: { log_date: @user_daily_log.log_date, logtime: @user_daily_log.logtime, remarks: @user_daily_log.remarks } }
    end

    assert_redirected_to user_daily_log_url(UserDailyLog.last)
  end

  test "should show user_daily_log" do
    get user_daily_log_url(@user_daily_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_daily_log_url(@user_daily_log)
    assert_response :success
  end

  test "should update user_daily_log" do
    patch user_daily_log_url(@user_daily_log), params: { user_daily_log: { log_date: @user_daily_log.log_date, logtime: @user_daily_log.logtime, remarks: @user_daily_log.remarks } }
    assert_redirected_to user_daily_log_url(@user_daily_log)
  end

  test "should destroy user_daily_log" do
    assert_difference('UserDailyLog.count', -1) do
      delete user_daily_log_url(@user_daily_log)
    end

    assert_redirected_to user_daily_logs_url
  end
end
