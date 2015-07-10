require 'rails_helper'

describe 'destroy project path' do
  it 'will destroy the project' do
    user = FactoryGirl.create(:user_as_admin)
    login_as(user, :scope => :user)
    category = FactoryGirl.create(:category, user_id: user.id)
    project = FactoryGirl.create(:project, category_id: category.id)
    visit category_project_path(category, project)
    click_on "Delete #{project.name}"
    expect(page).to have_content category.name
  end
end
