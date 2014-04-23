module AccelaRestClient
  class Cashier < Base
    def get_fee_settings(params)
      send_request("/v4/settings/fees", AuthTypes::ACCESS_TOKEN, params)
    end
    def create_payment(params)
      send_post("/v4/settings/fees", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_payment_transaction(ids,params)
      send_request("/v4/transactions/#{ids}", AuthTypes::ACCESS_TOKEN, params)
    end
  end
end