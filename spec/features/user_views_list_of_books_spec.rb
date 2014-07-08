require 'spec_helper'


feature "user visits the books page" do
  #acceptance criteria:
  #
  # * I see a title that lets me know I'm on the right page
  # * I see all of the books listed

  it "displays a title" do
    visit '/books'
    expect(page).to have_content "All Books"
  end

  it "sees all the books listed on the page" do
    # Create two books so we can test that they're displayed on the page
    book1 = Book.create!(title: "Look Book", author: "hemmingway", year: "1951")
    book2 = Book.create!(title: "To Kill a Mockingbird", author: "Harper Lee", year: "1961")

    visit 'books'

    expect(page).to have_content book1.title
    expect(page).to have_content book2.title
end
end
