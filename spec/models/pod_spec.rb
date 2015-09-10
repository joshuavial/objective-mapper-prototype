require 'rails_helper'

RSpec.describe Pod, type: :model do
  let!(:pod) {create :pod}
  it 'has many people' do
    pod.people << create(:person)
    expect(pod.people.count).to eq(1)
  end

  it 'has many communities' do
    pod.communities << create(:community)
    expect(pod.communities.count).to eq(1)
  end
end
