require "rails_helper"

describe "user can mark link read", :type => :feature do
  it 'user clicks mark as read button' do
    user_signup
    link = Link.create(title: "First", url:"http://www.example.com")
    visit '/'
    click_on 'Mark as Read'
    expect(Link.last.read).to eq(true)
  end
end
