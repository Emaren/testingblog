require 'rails_helper'
RSpec.feature "adding posts" do

  scenario "allow a user to add a post" do

    visit new_post_path

    fill_in "Title", with: "My Title"
    fill_in "Body", with: "My Body"

    click_on("Create Post")

    expect(page).to have_content("My Title")
    expect(page).to have_content("My Body")

  end

end
