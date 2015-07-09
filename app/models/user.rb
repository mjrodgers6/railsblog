class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments
  has_one  :profile, dependent: :destroy
end


