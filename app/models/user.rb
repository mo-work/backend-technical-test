# frozen_string_literal: true

require 'mongoid'

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :forename, type: String
  field :surname, type: String
  field :email, type: String

  validates_presence_of :email
  validates_uniqueness_of :email

  index({ forename: 1 }, background: true)
  index({ surname: 1 }, background: true)
  index({ email: 1 }, background: true)

  scope :by_email, lambda {|str| where(:email => str)}
end
