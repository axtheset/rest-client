module AccelaRestClient
  class Cashier < Base
    def get_fee_settings(params)
      send_request("/v4/settings/fees",AuthTypes::ACCESS_TOKEN,params)
    end
  end
end