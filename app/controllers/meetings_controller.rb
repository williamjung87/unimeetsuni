class MeetingsController < ApplicationController

 def index


     @meetings = Meeting.all


 end

 def new


 end

 def create

   meeting = Meeting.new


   meeting.date = params[:date]


   meeting.time = params[:time]


   meeting.size = params[:size]


   meeting.purpose = params[:purpose]


   meeting.place = params[:place]


   meeting.save

   redirect_to "/meetings"


 end

end

