module Features
    def sign_up
        visit sign_up_path
        fill_in "Email", with: "example@email.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_on "Sign up"
    end

    def sign_in(email, password)
        visit root_path
        click_on ""
        fill_in "Email", with: email
        fill_in "Password", with: password
        click_on "Sign in"
    end
end