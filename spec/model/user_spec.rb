require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create(name: 'Gordon Otieno', email: 'test@example.com', password: 'password',
                password_confirmation: 'password')
  end

  context 'Validations should be working' do
    it 'ALL validations should return true' do
      expect(subject).to be_valid
    end

    it 'Name validation should return false' do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it 'Name should return "Gordon Otieno"' do
      expect(subject.name).to eql('Gordon Otieno')
    end

    it 'email should return a string' do
      expect(subject.email).to be_a_kind_of(String)
    end
  end
end
