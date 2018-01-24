# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  @current_user = nil

  before do
    request.body.rewind
    @request_payload = JSON.parse request.body.read
  end

  helpers do
    def authenticate
      token = request.env['HTTP_ACCESS_TOKEN'] || params['auth_token']
      @current_user = User.find_by(session: token)
    end
  end

  get '/' do
    {
      message: 'Welcome to the playground!'
    }.to_json
  end
end
