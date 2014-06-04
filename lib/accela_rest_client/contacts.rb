module AccelaRestClient
  class Contact < Base
    def create_contacts(body)
      send_post('/v4/contacts', AuthTypes::ACCESS_TOKEN, body)
    end
    def update_contact(id, body)
      send_put("/v4/contacts/#{id}", AuthTypes::ACCESS_TOKEN, body)
    end
    def create_contact_addresses(id, body)
      send_post("/v4/contacts/#{id}/addresses", AuthTypes::ACCESS_TOKEN, body)
    end
    def get_contact_addresses(id, params)
      send_request("/v4/contacts/#{id}/addresses", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_contact(ids, params)
      send_request("/v4/contacts/#{ids}", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_contacts(params)
      send_request("/v4/contacts", AuthTypes::ACCESS_TOKEN, params)
    end
    def delete_contacts(ids)
      send_delete("/v4/contacts/#{ids}", AuthTypes::ACCESS_TOKEN)
    end
    def get_contact_preferred_channels
      send_request("/v4/settings/contacts/preferredChannels", AuthTypes::ACCESS_TOKEN)
    end
    def get_contact_races
      send_request("/v4/settings/contacts/races", AuthTypes::ACCESS_TOKEN)
    end
    def get_contact_relations
      send_request("/v4/settings/contacts/relations", AuthTypes::ACCESS_TOKEN)
    end
    def get_contact_types(params)
      send_request("/v4/settings/contacts/types", AuthTypes::ACCESS_TOKEN, params)
    end
  end
end