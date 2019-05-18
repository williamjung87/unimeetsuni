class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end

  def new
  end

  def create
    

    meeting = Meeting.new
    meeting.user_id = current_user.id
    meeting.datetime = params[:datetime]
    meeting.size = params[:size]
    meeting.purpose = params[:purpose]
    meeting.place = params[:place]
    meeting.save

    redirect_to "/meetings"
  end

  def block 

    unless user_signed_in?

      redirect_to "/user/sign_in"

    end
  end

end

  