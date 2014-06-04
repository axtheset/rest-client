module AccelaRestClient
  class App < Base
    def get_app_settings(params)
      send_request("/v4/appsettings/", AuthTypes::APP_CREDENTIALS, params)
    end
  end
end