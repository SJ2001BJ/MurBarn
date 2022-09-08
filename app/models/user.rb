class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # dean@example.com -> self.email.splite('@') -> ["murphy", "example.com"] -> [0] -> "murphy".capitalize -> "Murphy"
  def username
    return email.split("@")[0].capitalize
  end
end
