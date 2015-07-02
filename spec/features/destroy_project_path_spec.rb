require 'rails_helper'

describe 'destroy lesson path' do
  it 'will destroy the lesson' do
    category = Category.create(name: "name", description:  'test')
    project = Project.create(name:"name", link: 'link', description: 'test')
    visit category_project_path(category, project)
    click_on "Delete #{project.name}"
    save_and_open_page
    expect(page).to have_content( "#{category.name}")
  end
end
