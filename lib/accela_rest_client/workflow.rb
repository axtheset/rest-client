module AccelaRestClient
  class Workflow < Base
    def get_my_workflow_tasks(params)
      send_request("/v4/workflowTasks/mine", AuthTypes::ACCESS_TOKEN, params)
    end
  end
end