module AccelaRestClient
  class Addresses < Base
    def get_addresses(params)
      send_request("/v4/addresses", AuthTypes::ACCESS_TOKEN, params)
    end

    def get_address(id,params)
      send_request("/v4/addresses/#{id}", AuthTypes::ACCESS_TOKEN, params)
    end

    def get_address_parcels(id,params)
      send_request("/v4/addresses/#{id}/parcels" ,AuthTypes::ACCESS_TOKEN, params)
    end

    def get_countries
      send_request("/v4/settings/addresses/countries", AuthTypes::ACCESS_TOKEN)
    end

    def get_states
      send_request("/v4/settings/addresses/states", AuthTypes::ACCESS_TOKEN)
    end

    def get_street_directions
      send_request("/v4/settings/addresses/streetDirections" ,AuthTypes::ACCESS_TOKEN)
    end

    def get_street_fractions
      send_request("/v4/settings/addresses/streetFractions" ,AuthTypes::ACCESS_TOKEN)
    end

    def get_street_suffixes
      send_request("/v4/settings/addresses/streetSuffixes" ,AuthTypes::ACCESS_TOKEN)
    end

    def get_unit_types
      send_request("/v4/settings/addresses/unitTypes" ,AuthTypes::ACCESS_TOKEN)
    end

  end
end

