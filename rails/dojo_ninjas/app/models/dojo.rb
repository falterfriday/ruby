class Dojo < ActiveRecord::Base
    has_many :ninjas
    validates :name, :city, :state, presence:true
    validates :state, length: { minimum: 2, maximum: 2 }
end
