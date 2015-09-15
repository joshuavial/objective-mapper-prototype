class ObjectivesController < ApplicationController
  def community
    @agents = Community.all
    @agent_name = 'Community'
    render :objectives
  end

  def show_community
    @community = Community.find params[:id]
    @agent_name = @community.name
    @agents = [@community]
    @agents.concat @community.pods
    people = @community.pods.collect(&:people)
    people.concat @community.people
    people = people.compact.flatten.uniq
    @agents.concat people
    render :objectives
  end

  def pod
    @agents = Pod.all
    @agent_name = 'Pod'
    render :objectives
  end

  def people
    @agents = Person.all
    @agent_name = 'Individual'
    render :objectives
  end
end
