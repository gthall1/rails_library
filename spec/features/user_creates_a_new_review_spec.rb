require 'spec_helper'

feature "user creates a new review" do
  it "creates a new review" do
    visit book_path(book)

    select "1", from: "Rating"
    fill_in "Body", with: "a pretty good book"
    click_on "Create Review"

    expect(page).to have_content "a pretty good book"
  end
end
