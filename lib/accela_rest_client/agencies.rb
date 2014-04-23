module AccelaRestClient
  class Agencies < Base
    def get_agencies
      send_request("/v4/agencies", AuthTypes::ACCESS_TOKEN)
    end

    def get_agency(name)
      send_request("/v4/agencies/#{name}", AuthTypes::ACCESS_TOKEN)
    end

    def get_agency_logo()
      send_request("/v4/agencies/#{name}/logo", AuthTypes::ACCESS_TOKEN)
    end

    def get_departments()
      send_request("/v4/settings/departments", AuthTypes::ACCESS_TOKEN)
    end

    def get_department_staff(id)
      send_request("/v4/settings/departments/#{id}/staffs", AuthTypes::ACCESS_TOKEN)
    end
  end
end

