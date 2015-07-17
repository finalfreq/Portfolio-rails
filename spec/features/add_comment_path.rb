require 'rails_helper'

describe "The adding comment path" do
  it "adds a comment to a post", js: true do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Add Comment'
    fill_in "comments-body", with: "name"
    click_on "Create Comment"
    expect(page).to have_content "Add Comment"
  end
end
