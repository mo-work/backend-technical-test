# frozen_string_literal: true

FactoryBot.define do
  sequence :forename do |n|
    "Peter#{n}"
  end

  sequence :surname do |n|
    "Parker#{n}"
  end

  factory :user, class: User do
    forename { Faker::Name.first_name }
    surname { Faker::Name.last_name }
    email { "#{forename}.#{surname}@example.com".downcase }
    session { SecureRandom.hex }
  end
end
