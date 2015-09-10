require 'rails_helper'

RSpec.describe Community, type: :model do
  let!(:community) {create(:community)}
  it 'has many pods' do
    community.pods << create(:pod)
    expect(community.pods.count).to eq(1)
  end

  it 'has many people' do
    community.people << create(:person)
    expect(community.people.count).to eq(1)
  end
end
