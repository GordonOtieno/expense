RSpec.describe 'Group  test', type: :feature do
  describe 'group#index' do
    before(:example) do
      @user = User.create(name: 'gordon', email: 'otienogordon95@gmail.com', password: 'test123')
      visit new_user_session_path
      fill_in 'Email', with: 'otienogordon95@gmail.com'
      fill_in 'Password', with: 'test123'
      click_button 'Log in'
    end
  end
end
