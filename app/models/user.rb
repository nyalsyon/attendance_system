class User < ApplicationRecord
  has_many :user_daily_logs
    validates :name,
    presence: true
    validates :username,
    presence: true, uniqueness: true, length: {minimum:4, maximum:10}
    validates :password,
    presence:true,length: {minimum:4, maximum:20}
    validates :email,
    presence: true
end
