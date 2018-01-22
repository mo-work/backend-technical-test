# frozen_string_literal: true

require File.expand_path '../../spec_helper.rb', __FILE__

describe User do
  let(:user1) { create(:user) }

  before do
  end

  it 'should search by email' do
    # TODO: match user by part of the email
    expect(User.by_email(user1.forename).first).to eq(user1)
  end
end
