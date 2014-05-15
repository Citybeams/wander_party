require 'spec_helper'

describe WelcomeController do


it' should return a list of flights' do
   HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=JFK&destination=LAX&departuredate=2014-07-01&returndate=2014-07-14&outboundflightstops=0&inboundflightstops=0&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc", :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/ACPCRTC!ICESMSLB\/CRT.LB!-3663573353839303422!35306!0!!E2E-1
"})
    assert_equal 200, response.body
  end
end

