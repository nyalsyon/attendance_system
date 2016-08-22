class AddUserIdToUserDailyLogs < ActiveRecord::Migration[5.0]
  def change
      add_column :user_daily_logs, :user_id, :integer
  ends
end
