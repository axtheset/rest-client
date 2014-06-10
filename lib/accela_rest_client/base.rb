module AccelaRestClient
  
  class Base
    include HTTParty

    format :json
    BASE_URI = 'https://apis.accela.com'

    ESCAPES = {
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

    def send_request(path,auth_type,query={})
      unless query.empty?
        uri = Addressable::URI.new
        uri.query_values = query.clone
        send_query = uri.query
        self.class.get(BASE_URI + path, :headers => set_authorization_headers(auth_type), :query => escape_characters(send_query))
      else
        self.class.get(BASE_URI + path, :headers => set_authorization_headers(auth_type))
      end
    end

    def send_post(path,auth_type,body)
      self.class.post(BASE_URI + path, :headers => set_authorization_headers(auth_type), :body => body.to_json)
    end

    def send_put(path,auth_type,body)
      @options = {
        headers: set_authorization_headers(auth_type),
        body: body.to_json
      }
      self.class.put(BASE_URI + path, @options)
    end

    ## implement delete

    module AuthTypes
       ACCESS_TOKEN = 'AccessToken'
       APP_CREDENTIALS = 'AppCredentials'
       NO_AUTH = 'NoAuth'
    end

    ##private

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
        headers['x-accela-appsecret'] = @app_secret
      when 'NoAuth'
        headers['x-accela-environment'] = @environment
        headers['x-accela-agency'] = @agency  
      end

      headers
    end

    def escape_characters(text)
      text = text.dup
      ESCAPES.each { |k,v| text.gsub!(k, v) }
      text
    end
  end

end