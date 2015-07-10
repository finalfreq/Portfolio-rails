require 'rails_helper'

describe "The adding comment path" do
  it "adds a comment to a post" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    fill_in "Body", with: "name"
    click_on "Create Comment"
    expect(page).to have_content "submitted"
  end

  it "will give a(n) error(s) when a name is not entered" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on "Create Comment"
    expect(page).to have_content 'There was a problem'
  end
end
