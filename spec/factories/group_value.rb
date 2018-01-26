# frozen_string_literal: true

FactoryBot.define do
  factory :group_value, class: GroupValue do
    value { Faker::Lorem.word }
    name { Faker::Lorem.word }
  end
end
