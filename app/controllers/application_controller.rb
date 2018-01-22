# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  helpers do
    def authenticate
     
    end

    def authenticate!
      authenticate
    end
  end

  get '/' do
    {
      message: 'Welcome to the playground!'
    }.to_json
  end
end
