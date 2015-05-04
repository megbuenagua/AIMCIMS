class LoginAccount < ActiveRecord::Base
validates_uniqueness_of :username

belongs_to :members
belongs_to :admin_staffs
end
