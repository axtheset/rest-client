require 'spec_helper'

describe AccelaRestClient::App do

  subject { AccelaRestClient::App.new(app_id,app_secret,access_token,environment,agency) }

  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }

 describe '#get_linked_accounts' do
    
    it 'get_linked_accounts should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/civicid/accounts", AccelaRestClient::App::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_linked_accounts
    end

  end

  describe '#get_account_profile' do
    
    let(:id) { 'id' }

    it 'get_account_profile should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/civicid/accounts/#{id}", AccelaRestClient::App::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_account_profile(id)
    end

  end

 describe '#get_linked_accounts' do
    
    it 'get_linked_accounts should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/civicid/accounts", AccelaRestClient::App::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_linked_accounts
    end

  end
end
