require "chef/handler"
require 'hipchat/chef'

class HipchatHandler < Chef::Handler
  VERSION = "0.0.1"

  def initialize(opts = {})
    @config = opts
  end

  def report()
    if run_status.failed?
      Chef::Log.error("Creating Hipchat exception report")
      HipChat::NotifyRoom.new(:api_token => @config[:token], :room_name => @config[:room]).report
    end
      if run_status.success? && @config[:updated_resources] == true
         Chef::Log.info("Sending HipChat updated resources report")
         HipChat::NotifyRoom.new(:api_token => @config[:token], :room_name => @config[:room]).report
  end
end
end
