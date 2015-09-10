class Pod < ActiveRecord::Base
  has_many :memberships, as: :member
  has_many :people, through: :memberships, source: :member, source_type: 'Person'
end
