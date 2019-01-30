require 'pg'

feature 'Adding a new bookmarks' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', :with => 'http://www.dev.ngo')
    click_button('Submit')

    expect(page).to have_content "http://www.dev.ngo"

  end

end
