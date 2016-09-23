class Message < ActiveRecord::Base

  #-------------------------------------------associations------------------------------------------
  belongs_to :user
  belongs_to :post
  has_many :comments, as: :commentable

  #-------------------------------------------validations-------------------------------------------
  validates :author, :message, presence:true
  validates :message, length: { minimum: 10 }
end
