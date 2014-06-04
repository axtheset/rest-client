module AccelaRestClient
  class Document < Base
    def download_document(id, params)
      send_request("/v4/documents/#{id}/download", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_document(ids, params)
      send_request("/v4/documents/#{ids}", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_document_types
      send_request("/v4/settings/documents/categories", AuthTypes::ACCESS_TOKEN)
    end
  end
end