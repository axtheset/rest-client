require 'spec_helper'

describe AccelaRestClient::Addresses do

  subject { AccelaRestClient::Addresses.new(app_id,app_secret,access_token,environment,agency) }

  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }
  let(:params) { Hash.new }
  let(:id) {7}

  describe '#get_addresses' do
    
    it 'get_addresses should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/addresses", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN, params).and_return(true)
      subject.get_addresses(params)
    end

  end

  describe '#get_address' do

    it 'get_address should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/addresses/#{id}", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN, params).and_return(true)
      subject.get_address(id,params)
    end
  end

  describe '#get_address_parcels' do

    it 'get_address_parcels should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/addresses/#{id}/parcels", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN, params).and_return(true)
      subject.get_address_parcels(id,params)
    end
  end

  describe '#get_countries' do

    it 'get_countries should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/addresses/countries", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_countries
    end
  end

  describe '#get_states' do

    it 'get_states should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/addresses/states", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_states
    end
  end

  describe '#get_street_directions' do

    it 'get_street_directions should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/addresses/streetDirections", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_street_directions
    end
  end

  describe '#get_street_fractions' do

    it 'get_street_fractions should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/addresses/streetFractions", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_street_fractions
    end
  end

  describe '#get_street_suffixes' do

    it 'get_street_suffixes should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/addresses/streetSuffixes", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_street_suffixes
    end

  end

  describe '#get_unit_types' do

    it 'get_unit_types should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/addresses/unitTypes", AccelaRestClient::Addresses::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_unit_types
    end
  end

end
