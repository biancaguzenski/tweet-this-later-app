class User < ApplicationRecord
    # virtual atributes: password and password_confirmation - we only 
    # iteract with them when creating a user

    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
