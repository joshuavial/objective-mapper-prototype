class Person < ActiveRecord::Base
  has_many :memberships, as: :member
  with_options through: :memberships, source: :joinable do |a|
    a.has_many :pods, source_type: 'Pod'
    a.has_many :direct_communities, source_type: 'Community'
  end

  has_many :objectives, as: :agent

  def communities
    pod_communities.concat(direct_communities)
  end

  def pod_communities
    pods.collect(&:communities).flatten
  end
end
