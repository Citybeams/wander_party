class FlightsController < ApplicationController
  def index

  end

  def show
    # flight = Flight.new
    # flight.origin = params[]
  end

  def create
     # capture the values from params
      origin_input = params[:origin_input]
    # assign values to variables
    # put variables in a string to make an httparty request
      destination_input = params[:destination_input]
      depart_date = params[:depart_date]
      return_date = params[:return_date]
    @response = HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=#{origin_input}&destination=#{destination_input}&departuredate=#{depart_date}&returndate=#{return_date}&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc", :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/CERTG!ICESMSLB\/CRT.LB!-3664018430723002751!263206!0!!E2E-1"})
  end
end




https://api.test.sabre.com/v1/shop/flights?origin=LAX&destination=JFK&departuredate={"{:id=>\"dateField\"}(1i)"=>"2014", "{:id=>\"dateField\"}(2i)"=>"5", "{:id=>\"dateField\"}(3i)"=>"1"}&returndate={"{:id=>\"dateField\"}(1i)"=>"2014", "{:id=>\"dateField\"}(2i)"=>"5", "{:id=>\"dateField\"}(3i)"=>"1"}&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc


https://api.test.sabre.com/v1/shop/flights?origin=JFK&destination=LAX&departuredate=2014-06-01&returndate=2014-06-14&outboundflightstops=0&inboundflightstops=0&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc

`
