require 'rails_helper'

feature "user signup" do
    scenario "successfully" do
        visit sign_up_path
        fill_in "Email", with: "example@email.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_on "Sign up"

        expect(page).to have_current_path(root_path(post))
    end
end