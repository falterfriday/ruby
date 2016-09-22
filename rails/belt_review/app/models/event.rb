class Event < ApplicationRecord
    belongs_to :user
    has_many :users, through: :attends
    has_many :comments, dependent: :destroy
    has_many :attends

    validates :name, :date, :location, :state,
        presence:true

    validates_date :date, after:lambda{ Date.current}
end
