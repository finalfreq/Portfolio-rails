require 'rails_helper'

describe "The adding project path" do
  it "adds a project to a category" do
    category = FactoryGirl.create(:category)
    visit category_path(category)
    click_on "Add #{category.name} Project"
    fill_in "Name", with: "name"
    fill_in "GitHub Link", with: "Stuff"
    fill_in "Description", with: "more stuff"
    click_on "Create Project"
    expect(page).to have_content "Added"
  end

  it "will give a(n) error(s) when a name is not entered" do
    category = FactoryGirl.create(:category)
    visit new_category_project_path(category)
    click_on "Create Project"
    expect(page).to have_content 'errors'
  end
end
