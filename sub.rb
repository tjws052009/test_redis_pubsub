# -*- coding:utf-8 -*-
#
#
require 'bundler/setup'
require 'redis'

$redis = Redis.new({ host: 'localhost' })

$redis.subscribe('topic1') do |on|
  on.message do |channel, msg|
    data = msg
    puts "[#{Time.now.to_i}] #{channel} - #{msg}"
  end
end

