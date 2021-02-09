module Features
    def sign_in
        visit sign_up_path
        fill_in "Email", with: "example@email.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_on "Sign up"
    end
end