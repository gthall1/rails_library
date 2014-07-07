require 'spec_helper'

feature "user creates a new review" do
  it "creates a new review" do
    book = Book.create!(title: "Haha", author: "blah", year: "1951")

    visit book_path(book)

    select "1", from: "Rating"
    fill_in "Body", with: "a pretty good book"
    click_on "Create Review"

    expect(page).to have_content "a pretty good book"
  end
end
