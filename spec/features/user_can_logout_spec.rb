require 'rails_helper'
describe 'registered users can login and logout' do
  it 'successfully ' do
    user = User.create(name: "funbucket13", password: "test", email: 'manojpanta')
    visit root_path

    click_on "I already have an account"

    expect(current_path).to eq(login_path)
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_on "Log In"
    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome, #{user.name}")
    expect(page).to have_content("Log out")

    click_on "Log out"
    expect(current_path).to eq(root_path)
    expect(page).to_not have_content("Welcome, #{user.name}")
  end
end
