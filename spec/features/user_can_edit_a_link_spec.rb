require "rails_helper"

describe "user can view links", :type => :feature do
  it 'shows all links on the index' do
    user_signup
    Link.create(title: "Title", url: "http://www.example.com")
    visit "/"
    click_on 'Edit'
    fill_in "Title", with: "Different Link"
    fill_in "Url", with: "http://www.example.com/2"
    click_on "Submit"
    expect(page).to have_content("Different Link")
    expect(page).to have_content("http://www.example.com/2")
  end
end
