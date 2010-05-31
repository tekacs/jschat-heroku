require 'rubygems'
require 'sinatra'

set :environment, :production

# You could log like this:
# log = File.new(File.join(File.dirname(__FILE__), 'sinatra.log'), 'a')
# $stdout.reopen(log)
# $stderr.reopen(log)

ARGV << '-c' << File.join(File.expand_path(File.dirname(__FILE__)), 'config.json')
bin_dir = File.dirname(Gem.bin_path('jschat', 'jschat-web'))
httpdir = File.expand_path(File.join(bin_dir, '..', 'lib/jschat/http'))
require File.join(httpdir, 'jschat.rb')
run Sinatra::Application
