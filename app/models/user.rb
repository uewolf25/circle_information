class User < ApplicationRecord
  validates :user_name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
end
