class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_one  :profile, dependent: :destroy
end


