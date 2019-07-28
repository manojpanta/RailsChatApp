class RoomsController < ApplicationController
  def show
    if current_user
      @messages = current_user.messages
    else
      @messages = User.find(2).messages
    end
  end
end
