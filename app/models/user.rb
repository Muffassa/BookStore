class User < ActiveRecord::Base
  has_secure_password
  has_one :order, dependent: :destroy
  has_one :administrator, dependent: :destroy
end
