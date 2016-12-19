require "rails_helper"

describe "user can submit a link", :type => :feature do
  it 'submits valid link with form' do
    user_signup
    fill_in "Title", with: "Example"
    fill_in "Url", with: "http://www.example.com"
    click_on "Submit"
    expect(Link.all.count).to eq(1)
  end

  it 'submits invalid link' do
    user_signup
    fill_in "Title", with: "Example"
    fill_in "Url", with: "www.example"
    click_on "Submit"
    expect(page).to have_content('Link not valid format')
    expect(Link.all.count).to eq(0)

  end
end
