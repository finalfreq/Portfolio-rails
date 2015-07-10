require 'rails_helper'

describe "The Edit post path" do
  it "edits a post" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on "Edit #{post.name}"
    fill_in 'Name', with: "test"
    fill_in 'Body', with: "testttt"
    click_on "Update Post"
    expect(page).to have_content "Updated"
  end

  it "gives error when no content is entered" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on "Edit #{post.name}"
    fill_in 'Name', with: ""
    click_on "Update Post"
    expect(page).to have_content "errors"

  end
end
