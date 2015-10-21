require 'rails_helper'

RSpec.describe Objective, type: :model do
  context 'when an agent has 3 objectives' do
    let!(:agent) {create :person}
    before { 3.times {agent.objectives << create(:objective)} }

    it 'can have no more than 3 objectives for an agent' do
      expect {
        agent.objectives << create(:objective)
      }.to_not change {agent.objectives.count}
    end

    it 'can update an objective when there are three' do
      objective = agent.objectives.last
      expect {
        objective.title = 'spaghetti'
        objective.save
      }.to change {objective.reload.title}
    end
  end
end
