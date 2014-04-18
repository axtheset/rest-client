module AccelaRestClient
  
  class Base
    include HTTParty
    require "addressable/uri"

    def initialize(app_id,app_secret,access_token,environment,agency)
      ## The application ID (provisioned when app is created).
      @app_id = app_id
      ## The application secret (provisioned when app is created).
      @app_secret = app_secret
      ## The access token for making calls to the Accela API.
      @access_token = access_token
      ## The environment in which the app is running.
      @environment = environment
      ## The name of the agency.
      @agency = agency    
    end

    def send_request(path,auth_type,query)
      uri = Addressable::URI.new
      uri.query_values = query.clone
      response = HTTParty.get('https://apis.accela.com' + path,:headers => set_authorization_headers(auth_type),:query => escape_characters(uri.query))
    end

    module AuthTypes
       ACCESS_TOKEN = 'AccessToken'
       APP_CREDENTIALS = 'AppCredentials'
       NO_AUTH = 'NoAuth'
    end

    private

    def set_authorization_headers(auth_type)
      headers = {
        'Content-Type' =>'application/json',
        'Accept' => 'application/json',
        'x-accela-appid' => @app_id
      }

      case auth_type
      when 'AccessToken'
        headers.merge!( 'Authorization' => @access_token, 'x-accela-agency' => @agency )
      when 'AppCredentials'
        headers['x-accela-appsecret'] = @agency
      else
        headers['x-accela-environment'] = @environment  
      end

      headers
    end

    def escape_characters(text)
      escapes = {
        "." => ".0",
        "-" => ".1",
        "%" => ".2",
        "/" => ".3",
        "\\" => ".4",
        ":" => ".5",
        "*" => ".6",
        "\\" => ".7",
        "<" => ".8",
        ">" => ".9",
        "|" => ".a",
        "?" => ".b",
        " " => ".c",
        "&" => ".d",
        "#" => ".e",
      }

      text.gsub(/[-!$%^&*# \\()_+|~=`{}\[\]:";'<>?,.\/]/,escapes)
    end
  end

end