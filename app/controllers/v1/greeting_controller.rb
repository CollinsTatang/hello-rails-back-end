class V1::GreetingController < ApplicationController
  def index
    @messages = Greeting.all
    @random = @messages[rand(0..(@messages.count))]

    render json: { greeting: @random }.to_json
  end
end
