module AccelaRestClient
  class Utility < Base
    def run_emse_script(id, body)
      send_post("/v4/scripts/#{id}", AuthTypes::ACCESS_TOKEN, body)
    end
  end
end