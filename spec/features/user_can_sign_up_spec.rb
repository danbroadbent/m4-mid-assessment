require "rails_helper"

describe "sign up with email and password", :type => :feature do
  xit 'directs unauthenticated user to login or signup page' do
    visit '/'
    expect(current_path).to eq('/signup')
  end

  it "can create a new user with signup form" do
    visit '/signup'
    fill_in :username, with: "User 1"
    fill_in :password, with: "password"
    fill_in :password_confirmation, with: "password"
    click_on "Submit"
    expect(current_path).to eq('/')
    expect(page).to have_content('User 1')
    expect(page).to have_content('Sign Out')
  end
end
