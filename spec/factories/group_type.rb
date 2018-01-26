# frozen_string_literal: true

FactoryBot.define do
  factory :group_type, class: GroupType do
    name { Faker::Lorem.word }
  end
end
