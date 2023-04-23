# app/services/best_buy_api.rb

require 'httparty'

class BestBuyApi
  include HTTParty
  base_uri 'https://api.bestbuy.com'

  def self.search_products(keyword)
    response = get('/v1/products', query: {
      # apiKey: ENV['BEST_BUY_API_KEY'],
      apiKey: 'iE7qhoPtGqfnQHvxgbv3g5Qz',
      format: 'json',
      show: 'name,regularPrice,image',
      pageSize: 10,
      sort: 'name.asc',
      query: keyword
    })

    response.parsed_response
  end
end
