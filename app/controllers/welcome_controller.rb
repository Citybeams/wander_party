class WelcomeController < ApplicationController
  def index
  end

  def get_flight

  end
end



# response = HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=BOS&destination=LAX&departuredate=2014-08-01&returndate=2014-08-14&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc",
#   :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/ACPCRTC!ICESMSLB\/CRT.LB!-3664353080892414589!1211642!0!!E2E-1"})




