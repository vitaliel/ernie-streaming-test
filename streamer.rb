require 'ernie'
require "logger"

Ernie.logger = Logger.new 'rpc.log'

mod(:streamer) do
  fun(:get) do |fname|
    File.open(fname)
  end
end
