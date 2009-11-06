#!/usr/bin/env ruby

require "rubygems"
require 'bertrpc'

svc = BERTRPC::Service.new('localhost', 9999)
svc.stream = File.open("stream.tmp", "wb")

p svc.call.streamer.calc(1, 5)
p svc.call.streamer.get("client.rb")

svc.stream.close
