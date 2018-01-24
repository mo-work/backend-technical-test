# frozen_string_literal: true

require File.expand_path '../../spec_helper.rb', __FILE__

describe ThanksController do
  include FactoryHelper
  include_context 'factories'

  before(:each) do
  end

  it 'should create a new message' do
    message = "Thanks!"
    post '/thanks'
    expect(last_response.status).to eq 200

    res = JSON.parse(last_response.body)
    expect(res['message']).to include('Thanks')
  end
end
