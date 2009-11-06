require "rubygems"
require 'bertrpc'

svc = BERTRPC::Service.new('localhost', 9999)
p svc.call.streamer.get("1.txt")
