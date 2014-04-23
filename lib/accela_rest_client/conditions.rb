module AccelaRestClient
  class Condition < Base
    def get_standard_condition_of_approvals(params)
      send_request("/v4/conditionApprovals/standard", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_standard_conditions(params)
      send_request("/v4/conditions/standard", AuthTypes::ACCESS_TOKEN, params)
    end
    def get_condition_of_approval_statuses()
      send_request("/v4/settings/conditionApprovals/statuses", AuthTypes::ACCESS_TOKEN)
    end
    def get_condition_of_approval_priorities()
      send_request("/v4/settings/conditions/approval/priorities", AuthTypes::ACCESS_TOKEN)
    end
    def get_condition_of_approval_types()
      send_request("/v4/settings/conditions/approval/types", AuthTypes::ACCESS_TOKEN)
    end
    def get_condition_priorities()
      send_request("/v4/settings/conditions/priorities", AuthTypes::ACCESS_TOKEN)
    end
    def get_condition_statuses()
      send_request("/v4/settings/conditions/statuses", AuthTypes::ACCESS_TOKEN)
    end
    def get_condition_types()
      send_request("/v4/settings/conditions/types", AuthTypes::ACCESS_TOKEN)
    end     
  end
end