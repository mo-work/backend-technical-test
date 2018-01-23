# frozen_string_literal: true

FactoryBot.define do
  factory :entity_value, class: EntityValue do
    value { Faker::Lorem.word }
    name { Faker::Lorem.word }
  end
end
