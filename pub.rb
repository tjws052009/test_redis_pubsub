# -*- coding:utf-8 -*-
#
require 'bundler/setup'
require 'redis'

$redis = Redis.new({ host: 'localhost' })

10.times do |a|
  $redis.publish 'topic1', "[A#{a}] #{Time.now.to_i}"
end
