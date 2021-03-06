# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'development'

$LOAD_PATH << File.dirname(__FILE__) + '/api'
$LOAD_PATH << File.dirname(__FILE__) + '/models'
$LOAD_PATH << File.dirname(__FILE__) + '/controllers'

require 'bundler/setup'
require 'sinatra/base'

# models
require 'user'
require 'thank'
require 'group_type'
require 'group_value'

# controllers
require 'application_controller'
require 'thanks_controller'

class Playground < Sinatra::Base
  Encoding.default_external = 'UTF-8'

  set :environments, %w[development test production staging]

  use ApplicationController
  use ThanksController

  Mongoid.load!(Playground.root + '/../config/mongoid.yml', Playground.environment)
end
