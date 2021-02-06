require 'rails_helper'

feature "User visits about us section clicking on navbar link" do
    scenario "successfully" do
        visit root_path
        click_on "About us"
        expect(page).to have_current_path about_path
    end
end