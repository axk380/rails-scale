class PagesController < ApplicationController

def main
require 'socket'
idenfier_str = "cap update 4: this should appear from load balancer"
render plain: "Host: #{Socket.gethostname} \nPrivate IP: #{Socket.ip_address_list.detect(&:ipv4_private?).try(:ip_address)}\nGit version: #{`git show --pretty=%H___%ai -q`} Identifier: #{idenfier_str} \n Last Name: #{Name.last[:name]}"
#render plain: debug(request) # .inspect
end


end
