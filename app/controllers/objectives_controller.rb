class ObjectivesController < ApplicationController
  def community
    @agent = Community.all
    @agent_name = 'Community'
    render :objectives
  end

  def pod
    @agent = Pod.all
    @agent_name = 'Pod'
    render :objectives
  end

  def people
    @agent = Person.all
    @agent_name = 'Individual'
    render :objectives
  end
end
