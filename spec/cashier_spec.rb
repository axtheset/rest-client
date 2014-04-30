require 'spec_helper'

describe AccelaRestClient::Cashier do

  subject { AccelaRestClient::Cashier.new(app_id,app_secret,access_token,environment,agency) }

  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }
  let(:params) { Hash.new }

  describe '#get_fee_settings' do

    it 'get_fee_settings should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/fees", AccelaRestClient::Cashier::AuthTypes::ACCESS_TOKEN, params).and_return(true)
      subject.get_fee_settings(params)
    end

  end

  describe '#create_payment' do

    it 'create_payment should call send_request and return true' do
      subject.should_receive(:send_post).with("/v4/settings/fees", AccelaRestClient::Cashier::AuthTypes::ACCESS_TOKEN, params).and_return(true)
      subject.create_payment(params)
    end

  end

  describe '#get_payment_transaction' do

    let(:ids) { 123 }

    it 'get_payment_transaction should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/transactions/#{ids}", AccelaRestClient::Cashier::AuthTypes::ACCESS_TOKEN, params).and_return(true)
      subject.get_payment_transaction(ids,params)
    end

  end

end