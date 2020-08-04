class PagesController < ApplicationController

def main
require 'socket'
render plain: "Host: #{Socket.gethostname} \nPrivate IP: #{Socket.ip_address_list.detect(&:ipv4_private?).try(:ip_address)}"
#render plain: debug(request) # .inspect
end


end
