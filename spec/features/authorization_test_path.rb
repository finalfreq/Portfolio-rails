require 'rails_helper'

describe "Authorization of  user path" do
  it 'redirects user to about page if unathorized ' do
    admin = FactoryGirl.create(:user_as_admin, email: 'john@mail.com')
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_category_path
    expect(page).to have_content 'not authorized'
  end
  it 'redirects user to about page if unathorized ' do
    admin = FactoryGirl.create(:user_as_admin, email: 'john@mail.com')
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_post_path
    expect(page).to have_content 'not authorized'
  end
end
