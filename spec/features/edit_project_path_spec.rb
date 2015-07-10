require 'rails_helper'

describe "The edit project path" do
  it "edits a project" do
    category = FactoryGirl.create(:category)
    project = FactoryGirl.create(:project)
    visit category_project_path(category, project)
    click_on "Edit #{project.name}"
    fill_in "Name", with: "test"
    fill_in "GitHub Link", with: "Stuff"
    fill_in "Description", with: "more stuff"
    click_on "Update Project"
    expect(page).to have_content "Updated"
  end

  it "will give a(n) error(s) when something is not entered" do
    category = FactoryGirl.create(:category)
    project = FactoryGirl.create(:project)
    visit edit_category_project_path(category, project)
    fill_in "Name", with: ""
    fill_in "GitHub Link", with: "Stuff"
    fill_in "Description", with: "more stuff"
    click_on "Update Project"
    expect(page).to have_content 'errors'
  end
end
