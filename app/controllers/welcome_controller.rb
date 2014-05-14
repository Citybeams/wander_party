class WelcomeController < ApplicationController

  def index

    @response = HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=BOS&destination=LAX&departuredate=2014-08-01&returndate=2014-08-14&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc", :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/CERTG!ICESMSLB\/CRT.LB!-3664018430723002751!263206!0!!E2E-1"})
  # binding.pry
  end

  def get_flight

  end
end

# this is the url of the flight results page
# http://www.wanderparty.com/flights/NYC-MIA/2014-05-20/2014-06-10








