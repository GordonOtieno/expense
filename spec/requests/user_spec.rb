require 'rails_helper'

RSpec.describe 'users/index.html', type: :feature do
  describe 'users#index' do
    before(:example) do
      @user = User.create(name: 'Gordon', email: 'test@test.test', password: 'test123')
      visit new_user_session_path
      fill_in 'Email', with: 'test@test.test'
      fill_in 'Password', with: 'test123'
      click_button 'Log in'
    end
    it 'should display user name' do
      expect(page).to have_content(@user.name)
    end
  end
end
