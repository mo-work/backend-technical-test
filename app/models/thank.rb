# frozen_string_literal: true

require 'mongoid'

class Thank
  include Mongoid::Document
  include Mongoid::Timestamps

  field :message, type: String, default: 'Hey!'

  belongs_to :to, class_name: 'User'
  belongs_to :from, class_name: 'User'

  embeds_many :to_group_values, as: :group_valueable, class_name: 'GroupValue'
  embeds_many :from_group_values, as: :group_valueable, class_name: 'GroupValue'

  validates_presence_of :message

  index({ to_id: 1 }, background: true)
  index({ from_id: 1 }, background: true)

  before_create :create_entities

  # TODO
  def self.stats_messages_sent(date_from, date_to)
    []
  end

  private

  def create_entities
    to&.group_values&.map { |v| to_group_values << v }
    from&.group_values&.map { |v| from_group_values << v }
  end
end
