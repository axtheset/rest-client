module AccelaRestClient
  class CivicID < Base
    def get_linked_accounts
      send_request("/v4/civicid/accounts", AuthTypes::ACCESS_TOKEN)
    end

    def get_account_profile(id)
      send_request("/v4/civicid/accounts/#{id}", AuthTypes::ACCESS_TOKEN)
    end

    def get_profile_civic_id
      send_request("/v4/civicid/profile", AuthTypes::ACCESS_TOKEN)
    end
  end
end