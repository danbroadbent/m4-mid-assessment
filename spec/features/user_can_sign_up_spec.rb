require "rails_helper"

describe "sign up with email and password", :type => :feature do
  it 'directs unauthenticated user to login or signup page' do
    visit '/'
    expect(current_path).to eq('/signup')
  end
end
