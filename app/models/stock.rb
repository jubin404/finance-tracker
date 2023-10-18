class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: ENV['IEX_PUBLIC_KEY'],
      secret_token: ENV['IEX_SECRET_KEY'],
      endpoint: 'https://cloud.iexapis.com/v1'
    )

    client.price(ticker_symbol)
  end
end
