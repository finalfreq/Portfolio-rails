require 'rails_helper'

describe "The adding category path" do
  it "adds a category", js: true do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    visit categories_path
    click_on "Add Category"
    fill_in "Name", with: "test"
    fill_in "Description", with: "Stuff"
    click_on "Create Category"
    expect(page).to have_content "Add Category"
  end
end
