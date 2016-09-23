class Owner < ActiveRecord::Base

    #-------------------------------------------associations------------------------------------------
    belongs_to :blog
    belongs_to :user
end
