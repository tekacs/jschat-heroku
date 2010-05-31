require 'rubygems'
require 'sinatra'

set :environment, :production

# You could log like this:
# log = File.new(File.join(File.dirname(__FILE__), 'sinatra.log'), 'a')
# $stdout.reopen(log)
# $stderr.reopen(log)

ARGV << '-c' << File.join(File.expand_path(File.dirname(__FILE__)), 'config.json')
require 'jschat/http/jschat'
set :views, File.expand_path(File.join(File.dirname(__FILE__), 'views'))
run Sinatra::Application
