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
    def get_record_documents(id, params={})
      send_request("/v4/records/#{id}/documents", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_record_workflow_tasks(id, params={})
      send_request("/v4/records/#{id}/workflowTasks", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_record_workflow_task_statuses(id, params={})
      send_request("/v4/records/#{id}/workflowTasks/{id}/statuses", AuthTypes::ACCESS_TOKEN, params)
    end
  end
end