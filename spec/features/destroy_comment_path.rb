require 'rails_helper'

describe 'destroy comment path' do
  it 'will destroy the comment' do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment, post_id: post.id, user_id: user.id)
    visit post_path(post)
    find("#destroy").click
    expect(page).to have_content post.name
  end
end
