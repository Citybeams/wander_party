class WelcomeController < ApplicationController
  def index
  end

  def get_flight
    response = HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=JFK&destination=LAX&departuredate=2014-08-01&returndate=2014-08-07&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc",
    authorization: => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/ACPCRTC!ICESMSLB\/CRT.LB!-3664353080892414589!1211642!0!!E2E-1",
    X-Originating-Ip: => "208.185.23.206")
  end
end
