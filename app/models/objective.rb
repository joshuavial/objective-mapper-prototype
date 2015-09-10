class Objective < ActiveRecord::Base
  belongs_to :agent, polymorphic: true

  validate :maximum_objectives_per_agent

  private
  def maximum_objectives_per_agent
    if agent && agent.objectives.count > 2
      errors.add(:agent_id, "No more than three objectives allowed")
    end
  end
end
