require "rails_helper"

describe "user can submit a link", :type => :feature do
  it 'submits valid link with form' do
    user_signup
    fill_in "Title", with: "Example"
    fill_in "Url", with: "www.example.com"
    click_on "Submit"
    expect(Link.all.count).to eq(1)
  end
end
