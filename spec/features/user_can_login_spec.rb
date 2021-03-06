require 'rails_helper'

RSpec.describe "User registration form" do
  it "creates new user" do
    visit root_path

    click_on "Sign Up"

    expect(current_path).to eq(new_user_path)

    fill_in "Name", with: "funbucket13"
    fill_in "Email", with: "manojpanta95@gmail.com"
    fill_in "Password", with: "test"
    click_on "Create User"
    new_user = User.last
    expect(page).to have_content("Welcome, #{new_user.name}!")
  end
end
