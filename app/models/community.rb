class Community < ActiveRecord::Base
  has_many :memberships, as: :joinable
  has_many :pods, through: :memberships, source: :member, source_type: 'Pod'
  has_many :people, through: :memberships, source: :member, source_type: 'Person'
end
