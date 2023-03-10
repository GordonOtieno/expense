require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @user = User.create(name: 'Gordon Otieno', email: 'test@example.com', password: 'password',
                        password_confirmation: 'password')
    @group = Group.create(name: 'Vegatables', icon: 'vegetable-icon', author_id: @user.id)
  end

  context 'Validations should be working' do
    it 'ALL validations should return true' do
      expect(@group).to be_valid
    end

    it 'Name validation should return false' do
      @group.name = nil
      expect(@group).not_to be_valid
    end

    it 'Name should return "Movies"' do
      expect(@group.name).to eql('Vegatables')
    end

    it 'email should return a string' do
      expect(@group.icon).to be_a_kind_of(String)
    end
  end
end
