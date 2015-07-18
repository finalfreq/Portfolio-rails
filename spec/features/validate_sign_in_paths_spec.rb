require 'rails_helper'

describe "Unauthenticated user path" do
  it 'redirects user to sign in page ' do
    visit users_path
    expect(page).to have_content 'sign up'
  end
end

describe "add user path" do
  it 'adds a user with a name' do
    admin = FactoryGirl.create(:user_as_admin, email: 'john@mail.com')

    visit new_user_registration_path
    fill_in "Name", with: "name"
    fill_in "Email", with: "name@name.com"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    click_on "Sign up"
    expect(page).to have_content 'successfully'
  end
end
