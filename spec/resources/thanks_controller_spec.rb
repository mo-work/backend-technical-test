# frozen_string_literal: true

require File.expand_path '../../spec_helper.rb', __FILE__

describe ThanksController do
  include FactoryHelper
  include_context 'factories'

  before(:each) do
  end

  # TODO
  it 'should create a new message' do
    message = 'Thanks!'

    post '/thanks'
    expect(last_response.status).to eq 200

    t = Thank.last
    expect(t.message).to include('Thanks')
    expect(t.from).to eq(user1)
    expect(t.to).to eq(user2)
  end

  xit 'should return errors if ...' do
    # TODO
  end
end
