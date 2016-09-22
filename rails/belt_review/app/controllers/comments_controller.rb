class CommentsController < ApplicationController
  before_action :authorize

  def create
    comment = Comment.new(event:Event.find(params[:id]) ,comment:params[:comment],  name: @current_user.first_name)
    if comment.save
      redirect_to "/events/#{params[:id]}"
    else
      flash[:errors] = comment.errors.full_messages
      redirect_to "/events/#{params[:id]}"
    end
  end
end
