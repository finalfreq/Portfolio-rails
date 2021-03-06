require 'rails_helper'

describe "The Edit Category path" do
  it "edits a category" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    category = FactoryGirl.create(:category)
    visit category_path(category)
    click_on "Edit #{category.name}"
    fill_in 'Name', with: "test"
    fill_in 'Description', with: "testttt"
    click_on "Update Category"
    expect(page).to have_content "Updated"
  end

  it "gives error when no content is entered" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    category = FactoryGirl.create(:category)
    visit category_path(category)
    click_on "Edit #{category.name}"
    fill_in 'Name', with: ""
    click_on "Update Category"
    expect(page).to have_content "errors"

  end
end
