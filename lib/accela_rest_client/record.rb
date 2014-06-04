module AccelaRestClient
  class Record < Base
    def create_partial_record(body)
      send_post('/v4/records/initialize', AuthTypes::NO_AUTH, body)
    end
    def create_record_condition(record_id,body)
      send_post("/v3p/records/#{record_id}/conditions", AuthTypes::ACCESS_TOKEN, body)
    end
    def update_record(id,body)
      send_put("/v3/records/#{id}", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_record_comments(id)
      send_request("/v3/records/#{id}/comments", AuthTypes::ACCESS_TOKEN)
    end
  end
end