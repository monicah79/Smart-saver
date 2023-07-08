require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'Categories', type: :feature do
  before(:each) do
    User.create(name: 'Silver', email: 'silver@gmail.com', password: 'silver12345')
    visit new_user_session_path
    sleep 2
    fill_in('Email', with: 'silver@gmail.com')
    fill_in('Password', with: 'silver12345')
  end

  scenario 'show New category page' do
    visit categories_path
  end

  scenario 'create new category' do
    visit new_category_path
  end
end
