# frozen_string_literal: true

FactoryBot.define do
  factory :thank, class: Thank do
    message { Faker::Lorem.sentence }
  end
end
