require 'rails_helper'

RSpec.describe Objective, type: :model do
  it 'can have no more than 3 objectives for an agent' do
    agent = create(:person)
    3.times {agent.objectives << create(:objective)}
    expect {
      agent.objectives << create(:objective)
    }.to_not change {agent.objectives.count}
  end
end
