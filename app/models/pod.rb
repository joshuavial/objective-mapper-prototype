class Pod < ActiveRecord::Base
  has_many :memberships, as: :member
  has_many :communities, through: :memberships, source: :joinable, source_type: 'Community'

  has_many :members, as: :joinable, class_name: 'Membership'
  has_many :people, through: :members, source: :member, source_type: 'Person'
end
