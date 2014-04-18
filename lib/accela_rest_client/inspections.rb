module AccelaRestClient
  class Inspections < Base
    ## currently on v3 so I can help Hillsborough
    def describe_inspection_groups()
      send_request("/v3/system/inspection/groups",AuthTypes::ACCESS_TOKEN,'')
    end

    def describe_inspection_types(id)
      send_request("/v3/system/inspection/groups/#{id}/types",AuthTypes::ACCESS_TOKEN,'')
    end
  end
end