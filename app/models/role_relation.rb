class RoleRelation < ActiveRecord::Base
  belongs_to :registration
  belongs_to :role
  belongs_to :menuitems
end
