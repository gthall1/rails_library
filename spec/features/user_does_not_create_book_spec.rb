require 'spec_helper'

feature "user fails to create a new book" do
  it "fails to correctly add a book" do
    book = Book.new
    visit '/books/new'

    click_on "Create Book"

    expect(page).to have_content "Please fill out this field."
  end
end
