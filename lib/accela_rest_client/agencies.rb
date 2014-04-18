module AccelaRestClient
  class Agencies < Base
    def initialize(app_id,app_secret,access_token,environment,agency)
      super
    end

    def send_request(path,auth_type,query)
      super
    end

    def get_agencies()
      send_request("/v4/agencies",'AccessToken','')
    end

    def get_agency(name)
      send_request("/v4/agencies/#{name}",'AccessToken','')
    end

    def get_agency_logo()
      send_request("/v4/agencies/#{name}/logo",'AccessToken','')
    end

    def get_departments()
      send_request("/v4/settings/departments",'AccessToken','')
    end

    def get_department_staff(id)
      send_request("/v4/settings/departments/#{id}/staffs",'AccessToken','')
    end
  end
end

