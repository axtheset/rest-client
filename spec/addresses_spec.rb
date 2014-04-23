require 'spec_helper'

describe AccelaRestClient::Addresses do

  subject { AccelaRestClient::Addresses.new(app_id,app_secret,access_token,environment,agency) }

  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }

  describe '#get_addresses' do
    
    let(:params) { {} }

    it 'get_addresses should return true' do
      subject.should_receive(:get_addresses).with(params).and_return(true)
      subject.get_addresses(params)
    end
  end

end