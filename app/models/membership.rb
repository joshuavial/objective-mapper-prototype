class Membership < ActiveRecord::Base
  belongs_to :joinable, polymorphic: true
  belongs_to :member, polymorphic: true
end
