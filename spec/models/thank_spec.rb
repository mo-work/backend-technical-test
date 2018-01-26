# frozen_string_literal: true

require File.expand_path '../../spec_helper.rb', __FILE__

describe Thank do
  include FactoryHelper
  include_context 'factories'

  before do
  end

  # Base demo of thanks structure between users and their groups
  it 'should create a message between two users/departments' do
    t = create(:thank, from: user1, to: user2)

    expect(t.from_group_values).to eq([group_value_1])
    expect(t.to_group_values).to eq([group_value_2])
  end

  # TODO: What we need: some sort of grouping of all messages by Departments
  describe 'some stats' do
    it 'should provide: messages sent by groups' do
      t1 = create(:thank, from: user1, to: user2)

      user3 = create(:user, group_values: [group_value_1, group_value_2])

      t2 = create(:thank, from: user3, to: user2)

      expect(Thank.stats_messages_sent(Date.today.beginning_of_day, Date.today.end_of_day)).to match_array(
        [
          { '_id' => group_value_1.value, 'total' => 2 },
          { '_id' => group_value_2.value, 'total' => 1 }
        ]
      )
    end
  end
end
