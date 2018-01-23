# frozen_string_literal: true

require File.expand_path '../../spec_helper.rb', __FILE__

describe Thank do
  # this could represent a grouping like "Department"
  let(:eo1) { create(:entity_object) }

  # this could represent a specific Department of its parent group like "Development"
  let(:ev1) { create(:entity_value, entity_valueable: eo1) }
  let(:ev2) { create(:entity_value, entity_valueable: eo1) }

  let(:user1) { create(:user, entity_values: [ev1]) }
  let(:user2) { create(:user, entity_values: [ev2]) }

  before do
  end

  # Base demo of thanks structure between users and their groups
  it 'should create a message between two users/departments' do
    t = create(:thank, from: user1, to: user2)

    expect(t.from_entity_values).to eq([ev1])
    expect(t.to_entity_values).to eq([ev2])
  end

  # TODO: What we need: some sort of grouping of all messages by Departments
  describe 'some stats' do
    it 'should provide: messages sent by groups' do
      t1 = create(:thank, from: user1, to: user2)

      user3 = create(:user, entity_values: [ev1, ev2])

      t2 = create(:thank, from: user3, to: user2)

      expect(Thank.stats_messages_sent(Date.today.beginning_of_day, Date.today.end_of_day)).to match_array(
        [
          { '_id' => ev1.value, 'total' => 2 },
          { '_id' => ev2.value, 'total' => 1 }
        ]
      )
    end
  end
end
