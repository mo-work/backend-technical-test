# frozen_string_literal: true

class ThanksController < Sinatra::Base
  post '/thanks' do
    {
      message: 'TODO!'
    }.to_json
  end
end
