# frozen_string_literal: true

require 'mongoid'

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :forename, type: String
  field :surname, type: String
  field :email, type: String

  embeds_many :entity_values, as: :entity_valueable

  has_many :thanks_received, class_name: 'Thank', foreign_key: :to_id, dependent: :destroy, inverse_of: nil
  has_many :thanks_given, class_name: 'Thank', foreign_key: :from_id, dependent: :destroy, inverse_of: nil

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\W]+\z/

  index({ forename: 1 }, background: true)
  index({ surname: 1 }, background: true)
  index({ email: 1 }, background: true)

  scope :by_email, ->(str) { where(email: str) }
end
