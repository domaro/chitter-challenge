require 'data_mapper'
env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postegres://localhost/chitter-challenge_#{env}")
require './lib/peep'
DataMapper.finalize
DataMapper.auto_upgrade!