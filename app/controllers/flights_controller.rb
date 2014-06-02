class FlightsController < ApplicationController
  def index

  end

  def show

  end

  def create
     # capture the values from params
      origin_input = params[:origin_input]
    # assign values to variables
    # put variables in a string to make an httparty request
      destination_input = params[:destination_input]
      depart_date = params[:depart_date]
      return_date = params[:return_date]
    @response = HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=#{origin_input}&destination=#{destination_input}&departuredate=#{depart_date}&returndate=#{return_date}&outboundflightstops=0&inboundflightstops=0&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc", :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/ACPCRTD!ICESMSLB\/CRT.LB!-3657228668204821116!1258779!0!!E2E-1"})



    # capture the values from params
      origin_input2 = params[:origin_input2]
    # assign values to variables
    # put variables in a string to make an httparty request
      destination_input = params[:destination_input]
      depart_date = params[:depart_date]
      return_date = params[:return_date]
    @response2 = HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=#{origin_input2}&destination=#{destination_input}&departuredate=#{depart_date}&returndate=#{return_date}&outboundflightstops=0&inboundflightstops=0&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc", :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/ACPCRTD!ICESMSLB\/CRT.LB!-3657228668204821116!1258779!0!!E2E-1"})

    @response3 = HTTParty.get("https://api.test.sabre.com/v1/shop/themes", :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/ACPCRTC!ICESMSLB\/CRT.LB!-3663573353839303422!35306!0!!E2E-1"})
  end
end





