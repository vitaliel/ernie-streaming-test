require "#{File.dirname(__FILE__)}/ernie"
require "logger"

Ernie.logger = Logger.new 'rpc.log'

mod(:streamer) do
  fun(:get) do |fname|
    # Will be closed by ernie
    File.open(fname)
  end

  fun(:calc) do |a, b|
    a + b
  end
end
