# frozen_string_literal: true

module FactoryHelper
  RSpec.shared_context 'factories' do
    # this could represent a grouping like "Department"
    let(:group_type_1) { create(:group_type) }

    # this could represent a specific Department of its parent group like "Development"
    let(:group_value_1) { create(:group_value, group_valueable: group_type_1) }
    let(:group_value_2) { create(:group_value, group_valueable: group_type_1) }

    let(:user1) { create(:user, group_values: [group_value_1]) }
    let(:user2) { create(:user, group_values: [group_value_2]) }
  end
end
