require 'spec_helper'

feature "user creates an incomplete new review" do
  it "fails to create a new review" do
    visit book_path(book)


    click_on "Create Review"

    expect(page).to have_content "Please select an item in the list."
  end
end
