require 'rails_helper'

describe "The adding category path" do
  it "adds a category" do
    FactoryGirl.create(:user)
    visit categories_path
    click_on "Add Category"
    fill_in "Name", with: "test"
    fill_in "Description", with: "Stuff"
    click_on "Create Category"
    expect(page).to have_content "Successfully"
  end

  it "will give a(n) error(s) when a name is not entered" do
    FactoryGirl.create(:user)
    visit new_category_path
    click_on "Create Category"
    expect(page).to have_content 'errors'
  end
end
