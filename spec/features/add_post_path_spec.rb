require 'rails_helper'

describe "The adding post path" do
  it "adds a post" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    visit posts_path
    click_on "Add Post"
    fill_in "Name", with: "test"
    fill_in "Body", with: "Stuff"
    click_on "Create Post"
    expect(page).to have_content "Successfully"
  end

  it "will give a(n) error(s) when a name is not entered" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    visit new_post_path
    click_on "Create Post"
    expect(page).to have_content 'errors'
  end
end
