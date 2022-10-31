class MessagesController < ApplicationController
  def show
    @message = Message.find_by(id: rand(5) + 1)
  end
end
