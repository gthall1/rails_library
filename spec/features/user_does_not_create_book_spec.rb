require 'spec_helper'

feature "user fails to create a new book" do
  it "fails to correctly add a book" do
    visit '/books/new'

    click_on "Create Car"

    expect(page).to have_content "Please fill out this field."
  end
end
