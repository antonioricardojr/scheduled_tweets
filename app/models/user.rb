# email: string
# password_digest: string
#
# password: string (virtual attribute)
# password_confirmation: string (virtual attribute)


class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
