module Accelarestclient
  class Agencies < Accelabase
    def initialize(app_id,app_secret,access_token,environment,agency)
      super
    end

    def get_agencies(path,auth_type,params)
      Parent.instance_method(:send_request).bind(self).call(path,auth_type,query)
    end

    def get_agency(path,auth_type,params)
      Parent.instance_method(:send_request).bind(self).call(path,auth_type,query)
    end

    def get_agency_logo(path,auth_type,params)
      Parent.instance_method(:send_request).bind(self).call(path,auth_type,query)
    end

    def get_departments(path,auth_type,params)
      Parent.instance_method(:send_request).bind(self).call(path,auth_type,query)
    end

    def get_department_staff(path,auth_type,params)
      Parent.instance_method(:send_request).bind(self).call(path,auth_type,query)
    end
  end
end