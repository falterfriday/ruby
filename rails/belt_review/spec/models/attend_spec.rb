require 'rails_helper'

RSpec.describe Attend, type: :model do
    describe "relationships" do
        before do
            @user = create_user
            @event = @user.events.create(name:'test', date:'01-01-2017', location:'home', state:'MD')
            @attend = Attend.create(user:@user, event:@event)
        end
        it "belongs to a user" do
            expect(@attend.user).to eq(@user)
        end
    end
end
