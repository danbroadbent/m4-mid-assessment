require "rails_helper"

describe "user can view links", :type => :feature do
  it 'shows all links on the index' do
    user_signup
    Link.create(title: "Title", url: "http://www.example.com")
    visit "/"
    expect(page).to have_content("Title")
    expect(page).to have_content("http://www.example.com")
  end
end
