#!/usr/bin/env ruby

require "json"

members=JSON.parse(ARGF.read)
members["members"].each do |member|
  ip = member["addr"].split(':').first
  name = member["name"]
  puts "#{ip} #{name}"
end

