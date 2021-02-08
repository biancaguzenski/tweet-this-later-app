require 'rails_helper'

feature "user logout" do
    scenario "successfully" do
        sign_up
        click_on "Logout"

        expect(page).to have_content "You logged out"
    end
end