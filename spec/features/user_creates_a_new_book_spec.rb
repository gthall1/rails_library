require 'spec_helper'

feature "user creates a new book" do
  it "creates a new book" do
    visit '/books/new'

    fill_in "Title", with: "Gulliver's Travels"
    fill_in "Author", with: "Some Dude"
    fill_in "Year", with: "1983"
    click_on "Create Book"

    expect(page).to have_content "Gulliver's Travels"
  end
end
