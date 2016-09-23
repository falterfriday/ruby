class User < ActiveRecord::Base

    #-------------------------------------------associations------------------------------------------
    has_many :posts
    has_many :owners
    has_many :blogs, :through => :owners
    has_many :comments, as: :commentable

    #----------------------------------------------regex----------------------------------------------
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

    #-------------------------------------------validations-------------------------------------------
    validates :first_name, :last_name, presence:true, length: { in: 2..15}
    validates :email, presence:true, uniqueness: { case_sensitive:false }, format: { with:EMAIL_REGEX }
end
