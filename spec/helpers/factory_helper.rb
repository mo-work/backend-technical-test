# frozen_string_literal: true

module FactoryHelper
  RSpec.shared_context 'factories' do
    # this could represent a grouping like "Department"
    let(:eo1) { create(:entity_object) }

    # this could represent a specific Department of its parent group like "Development"
    let(:ev1) { create(:entity_value, entity_valueable: eo1) }
    let(:ev2) { create(:entity_value, entity_valueable: eo1) }

    let(:user1) { create(:user, entity_values: [ev1]) }
    let(:user2) { create(:user, entity_values: [ev2]) }
  end
end
