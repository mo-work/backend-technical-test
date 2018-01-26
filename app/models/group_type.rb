# frozen_string_literal: true

require 'mongoid'

class GroupType
  include Mongoid::Document

  field :name, type: String

  embeds_many :group_values, as: :group_valueable
end
