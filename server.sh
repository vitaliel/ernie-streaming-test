#!/bin/sh

# 0-4
debug=0
ernie --log-level $debug -p 9999 -n 2 -h streamer.rb
