# frozen_string_literal: true

require File.expand_path '../../spec_helper.rb', __FILE__

describe ApplicationController do
  before(:each) do
  end

  it 'should say welcome' do
    get '/'
    expect(last_response.status).to eq 200

    res = JSON.parse(last_response.body)
    expect(res['message']).to include('Welcome')
  end
end
