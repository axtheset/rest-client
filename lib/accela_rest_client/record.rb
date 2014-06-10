module AccelaRestClient
  class Record < Base
    def create_partial_record(body)
      send_post('/v4/records/initialize', AuthTypes::NO_AUTH, body)
    end
    def get_record_contacts(id)
      send_request("/v4/records/#{id}/contacts", AuthTypes::ACCESS_TOKEN)
    end
    def get_record_addresses(id, params)
      send_request("/v4/records/#{id}/addresses", AuthTypes::NO_AUTH)
    end
    def get_record_customforms(id)
      send_request("/v4/records/#{id}/customForms", AuthTypes::NO_AUTH)
    end
    def get_record_customforms_meta(id)
      send_request("/v4/records/#{id}/customForms/meta", AuthTypes::NO_AUTH)
    end
  end
end