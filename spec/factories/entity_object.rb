# frozen_string_literal: true

FactoryBot.define do
  factory :entity_object, class: EntityObject do
    name { Faker::Lorem.word }
  end
end
