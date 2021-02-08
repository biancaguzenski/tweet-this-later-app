require 'rails_helper'

feature "user signup" do
    scenario "successfully" do
        sign_up
        expect(page).to have_current_path(root_path)
        expect(page).to have_content "Welcome, you signed up!"
    end
end