require 'rails_helper'

describe "Unauthenticated user path" do
  it 'redirects user to sign in page ' do
    visit categories_path
    expect(page).to have_content 'sign up'
  end
end
