module ApplicationHelper
  def agent_path agent
    if agent.class == Community
      show_community_objectives_path(agent)
    else
      rails_admin.show_path(model_name: agent.model_name, id: agent.id)
      end
  end
end
