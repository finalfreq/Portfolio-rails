require 'rails_helper'

describe 'destroy lesson path' do
  it 'will destroy the lesson' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    category = FactoryGirl.create(:category)
    project = FactoryGirl.create(:project)
    visit category_project_path(category, project)
    click_on "Delete #{project.name}"
    expect(page).to have_content( "#{category.name}")
  end
end
