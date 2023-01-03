RSpec.describe 'Group  test', type: :feature do
  describe 'group#index' do
    before(:example) do
      @user = User.create(name: 'gordon', email: 'otienogordon95@gmail.com', password: 'test123')
      visit new_user_session_path
      fill_in 'Email', with: 'otienogordon95@gmail.com'
      fill_in 'Password', with: 'test123'
      click_button 'Log in'
      #   visit new_group_path
      #   fill_in 'name', with: 'Vitamins'
      #   fill_in 'icon', with: 'randomuser.me/api/portraits/women/86.jpg'

      #   click_button 'Save'
    end
    # it 'should display meassage' do
    #   Group.create(author_id: @user.id, name: 'Vitamins', icon: 'randomuser.me/api/portraits/women/86.jpg')
    #   expect(page).to have_content('Vitamins')
    # end
  end
end
