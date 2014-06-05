





# response["PricedItineraries"].class   returns an array

# response["PricedItineraries"][0]["AirItineraryPricingInfo"]["ItinTotalFare"]["TotalFare"]["Amount"]    this returns one price

# response["PricedItineraries"][0]["AirItinerary"]["OriginDestinationOptions"]["OriginDestinationOption"][0]["FlightSegment"][0]["DepartureDateTime"]
      # this returns the departuretime



response = HTTParty.get("https://api.test.sabre.com/v1/shop/flights?origin=JFK&destination=LAX&departuredate=2014-07-01&returndate=2014-07-14&outboundflightstops=0&inboundflightstops=0&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc", :headers => { "Authorization" => "Bearer Shared/IDL:IceSess\/SessMgr:1\.0.IDL/Common/!ICESMS\/ACPCRTD!ICESMSLB\/CRT.LB!-3656171979547479421!373451!0!!E2E-1"})


