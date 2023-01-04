require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    first_user = User.create(name: 'Gordon')
    Group.new(author_id: first_user, name: 'Proteins', icon: 'https://randomuser.me/api/portraits/women/86.jpg')
  end
  before { subject.save }
  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'Icon should be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
