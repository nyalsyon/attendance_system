class CreateUserDailyLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_daily_logs do |t|
      t.datetime :log_date
      t.datetime :logtime
      t.text :remarks

      t.timestamps
    end
  end
end
