class Post < ActiveRecord::Base

  #-------------------------------------------associations------------------------------------------
  belongs_to :blog
  belongs_to :user
  has_many :messages
  has_many :comments, as: :commentable

  #-------------------------------------------validations-------------------------------------------
  validates :title, :content, presence:true
end
