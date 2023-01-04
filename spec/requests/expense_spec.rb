require 'rails_helper'

RSpec.describe 'User Group test', type: :feature do
  describe 'gropu#index' do
    before(:example) do
      @user = User.create(name: 'gordon', email: 'otienogordon95@gmail.com', password: 'test123')
      visit new_user_session_path
      fill_in 'Email', with: 'otienogordon95@gmail.com'
      fill_in 'Password', with: 'test123'
      click_button 'Log in'
    end
    it 'should display meassage' do
      expect(page).to have_content('There is no Category In the Store')
    end
  end
end
