require 'rails_helper'

  describe 'destroy category path' do
    it 'will destroy the Category' do
      category = FactoryGirl.create(:category)
      visit category_path(category)
      click_on "Delete #{category.name}"
      expect(page).to have_content('Add Category')
    end
  end
