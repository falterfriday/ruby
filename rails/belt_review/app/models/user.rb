class User < ApplicationRecord
    has_many :events, through: :attending, dependent: :destroy


    has_secure_password
#------------------------EMAIL_REGEX------------------------
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

#------------------------VALIDATIONS------------------------
    validates :first_name, :last_name, :location, :state,
        presence:true

    validates :password, length: {minimum:8}

    validates :email,
        presence:true,
        uniqueness:{
            case_sensitive:false
            },
        format: {
            with:EMAIL_REGEX
            }
end
