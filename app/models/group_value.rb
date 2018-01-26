# frozen_string_literal: true

require 'mongoid'

class GroupValue
  include Mongoid::Document
  include Mongoid::Timestamps

  field :value, type: String
  field :name, type: String

  embedded_in :group_valueable, polymorphic: true
end
