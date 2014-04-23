module AccelaRestClient
  class Record < Base
    def create_partial_record(body)
      send_post('/v4/records/initialize', AuthTypes::NO_AUTH, body)
    end
  end
end