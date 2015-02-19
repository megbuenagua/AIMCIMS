class LoginAccount < ActiveRecord::Base
validates_uniqueness_of :username
validates_uniqueness_of :loginId

belongs_to :member
belongs_to :admin_staff
end
