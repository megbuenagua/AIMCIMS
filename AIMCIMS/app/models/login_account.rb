class LoginAccount < ActiveRecord::Base
validates_uniqueness_of :username

belongs_to :member
belongs_to :admin_staff
end
