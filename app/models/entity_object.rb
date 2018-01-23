# frozen_string_literal: true

require 'mongoid'

class EntityObject
  include Mongoid::Document

  field :name, type: String

  embeds_many :entity_values, as: :entity_valueable
end
