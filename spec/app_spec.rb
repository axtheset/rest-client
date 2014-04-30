require 'spec_helper'

describe AccelaRestClient::App do

  subject { AccelaRestClient::App.new(app_id,app_secret,access_token,environment,agency) }

  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }

 describe '#get_app_settings' do

  let(:params) { Hash.new }
    
    it 'get_app_settings should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/appsettings/", AccelaRestClient::App::AuthTypes::APP_CREDENTIALS, params).and_return(true)
      subject.get_app_settings(params)
    end

  end
end
