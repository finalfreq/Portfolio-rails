require 'rails_helper'

describe "The adding reference path" do
  it "adds a reference to portfolio", js: true do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    visit root_path
    click_on 'See References'
    click_on 'Add Reference'
    fill_in "Name", with: "name"
    fill_in "Email", with: "fake@mail.com"
    click_on "Create Reference"
    expect(page).to have_content "Add Reference"
  end
end
