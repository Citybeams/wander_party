require 'spec_helper'

describe WelcomeController do

it { should pass }


it' should return a list of flights' do
    get 'https://api.test.sabre.com/v1/shop/flights?origin=BOS&destination=LAX&departuredate=2014-08-01&returndate=2014-08-14&onlineitinerariesonly=N&limit=10&offset=1&eticketsonly=N&sortby=totalfare&order=asc&sortby2=departuretime&order2=asc'
    assert_equal 200, response.body
  end
end
