require 'rails_helper'

  describe 'destroy category path' do
    it 'will destroy the Category' do
      category = Category.create(name: "name", description:  'test')
      visit category_path(category)
      click_on "Delete #{category.name}"
      expect(page).to have_content('Add Category')
    end
  end
