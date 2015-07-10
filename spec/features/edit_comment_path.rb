require 'rails_helper'

describe "The edit comment path" do
  it "edits a comment" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment, post_id: post.id, user_id: user.id)
    visit post_path(post)
    find("#change").click
    fill_in "Body", with: "test"
    click_on "Update Comment"
    expect(page).to have_content "updated"
  end

  it "will give a(n) error(s) when something is not entered" do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment, post_id: post.id, user_id: user.id)
    visit edit_post_comment_path(post, comment)
    fill_in "Body", with: ""
    click_on "Update Comment"
    expect(page).to have_content 'errors'
  end
end
