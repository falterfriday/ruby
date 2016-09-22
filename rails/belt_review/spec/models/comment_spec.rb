require 'rails_helper'

RSpec.describe Comment, type: :model do
    describe "relationships" do
        before do
            @user = create_user
            @event = @user.events.create(name:'test', date:'01-01-2017', location:'home', state:'MD')
            @comment = @event.comments(name:'test', comment:'test comment')
        end
        it "belongs to a event" do
            expect(@comment.event).to eq(@event)
        end
    end
end
