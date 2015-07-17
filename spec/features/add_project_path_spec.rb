require 'rails_helper'

describe "The adding project path" do
  it "adds a project to a category", js: true do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    category = FactoryGirl.create(:category, user_id: user.id)
    visit category_path(category)
    click_on "Add #{category.name} Project"
    fill_in "Name", with: "name"
    fill_in "GitHub Link", with: "Stuff"
    fill_in "Description", with: "more stuff"
    click_on "Create Project"
    expect(page).to have_content "Add #{category.name} Project"
  end
end
