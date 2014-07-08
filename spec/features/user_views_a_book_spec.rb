require 'spec_helper'

feature "user visits a book's details page" do
  # Acceptance Criteria
  #
  # * I see a title that let's me know I'm on the book's page
  # * I see all reviews

  it "displays a title" do
    book = Book.create!(title: "Haha", author: "blah", year: "1951")

    visit book_path(book)

    expect(page).to have_content "Add a Review"
    expect(page).to have_content 'Back to Books'
  end
end
