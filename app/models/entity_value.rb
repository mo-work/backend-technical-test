# frozen_string_literal: true

require 'mongoid'

class EntityValue
  include Mongoid::Document
  include Mongoid::Timestamps

  field :value, type: String
  field :name, type: String

  embedded_in :entity_valueable, polymorphic: true
end
