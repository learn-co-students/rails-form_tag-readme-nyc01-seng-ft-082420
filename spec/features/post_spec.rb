require 'rails_helper'
 
describe 'new post' do
  it 'ensures that the form route works with the /new action' do
    visit new_post_path
    fill_in 'post_title', with: "My post title"
    fill_in 'post_description', with: 'My post description'
    click_on 'Submit Post'
 
    expect(page.current_path).to eq(posts_path)
    expect(page).to have_content('My post title')
    expect(page).to have_content('My post description')
  end
end