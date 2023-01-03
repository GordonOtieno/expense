require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject do
    User.create(name: 'Gordon')
    Expense.new(author_id: 1, name: 'Vegetables', amount: 2000)
  end
  before { subject.save }
  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'Amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
