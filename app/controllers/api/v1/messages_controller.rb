class Api::V1::MessagesController < ApplicationController
  def index
    messages = Message.find_by(id: rand(5) + 1)
    if messages
      render json: messages
    else
      render json: messages.errors, status: :bad_request
    end
  end
end
