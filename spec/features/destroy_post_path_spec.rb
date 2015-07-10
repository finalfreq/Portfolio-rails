require 'rails_helper'

  describe 'destroy post path' do
    it 'will destroy the post' do
      user = FactoryGirl.create(:user_as_admin)
      login_as(user, :scope => :user)
      post = FactoryGirl.create(:post)
      visit post_path(post)
      click_on "Delete #{post.name}"
      expect(page).to have_content "My Blog posts"
    end
  end
