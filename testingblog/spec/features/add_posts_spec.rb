require 'rails_helper'
RSpec.feature "adding posts" do

  scenario "allow a user to add a post" do

    post = create(:post)

    visit post_path(post)

    expect(page).to have_content("My New Title")
    expect(page).to have_content("My New Body")

  end

end
