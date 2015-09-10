class Community < ActiveRecord::Base
  has_many :memberships, as: :joinable

  with_options through: :memberships, source: :member do |a|
    a.has_many :pods, source_type: 'Pod'
    a.has_many :people, source_type: 'Person'
  end
end
