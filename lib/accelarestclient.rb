require "accelarestclient/version"
require "httparty"

module Accelarestclient
  # Your code goes here...
  
  class AccelaBase

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
      ## The API endpoint
      @endpoint = 'https://apis.accela.com/'    
    end

    def send_request(path,headers,query)
      response = HTTParty.get("#{@endpoint}/#{path}",:headers => headers,:query => query)
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
        headers.merge! ( 'x-accela-appsecret' => @agency)
      else
        headers.merge! ( 'x-accela-environment' => @environment)  
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
        "\\\\" => ".7",
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
