require 'rails_helper'

  describe 'destroy category path' do
    it 'will destroy the Category' do
      user = FactoryGirl.create(:user_as_admin)
      login_as(user, :scope => :user)
      category = FactoryGirl.create(:category)
      visit category_path(category)
      click_on "Delete #{category.name}"
      expect(page).to have_content 'Add Category'
    end
  end
