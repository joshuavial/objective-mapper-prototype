require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) {create(:person)}
  let(:community) {create(:community)}
  let(:pod) {create(:pod)}

  it 'has many pods' do
    person.pods << pod
    expect(person.pods.count).to eq(1)
  end

  it 'can belong to a community directly' do
    community.people << person
    expect(person.direct_communities.count).to eq(1)
    expect(person.communities.length).to eq(1)
  end

  it 'can belong to a community through a pod' do
    community.pods << pod
    pod.people << person
    expect(person.pod_communities).to include(community)
    expect(person.communities).to include(community)
  end
end
