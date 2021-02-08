require 'rails_helper'

feature "user logs in" do
    #scenario "successfully" do
    #    visit root_path
    #    expect(page).to have_content("Logged in successfully")
    #end
    scenario "failed" do
        visit root_path
        expect(page).to have_content("Invalid email or password")
    end
end