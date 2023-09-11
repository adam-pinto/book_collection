# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'book[title]', with: 'book 1'
    fill_in 'book[author]', with: 'author 1'
    fill_in 'book[price]', with: '9.99'
    fill_in 'book[published_date]', with: '09/05/2023'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('book 1')
  end
end